#!/bin/bash
set -e

rewire_wowza() {
  echo "Preparing Wowza..."
  rm -rf /usr/local/WowzaStreamingEngine/conf
  ln -sf ${WSE_DATA_DIR}/conf/wowza /usr/local/WowzaStreamingEngine/conf

  rm -rf /usr/local/WowzaStreamingEngine/manager/conf
  ln -sf ${WSE_DATA_DIR}/conf/manager /usr/local/WowzaStreamingEngine/manager/conf

  rm -rf /usr/local/WowzaStreamingEngine/transcoder
  ln -sf ${WSE_DATA_DIR}/transcoder /usr/local/WowzaStreamingEngine/transcoder

  rm -rf /usr/local/WowzaStreamingEngine/content
  ln -sf ${WSE_DATA_DIR}/content /usr/local/WowzaStreamingEngine/content

  rm -rf /usr/local/WowzaStreamingEngine/backup
  ln -sf ${WSE_DATA_DIR}/backup /usr/local/WowzaStreamingEngine/backup

  rm -rf /usr/local/WowzaStreamingEngine/applications
  ln -sf ${WSE_DATA_DIR}/applications /usr/local/WowzaStreamingEngine/applications

  rm -rf /usr/local/WowzaStreamingEngine/stats
  ln -sf ${WSE_DATA_DIR}/stats /usr/local/WowzaStreamingEngine/stats
}

initialize_data_dir() {
  mkdir -p ${WSE_DATA_DIR}
  chmod 0755 ${WSE_DATA_DIR}
  chown -R root:root ${WSE_DATA_DIR}

  if [[ ! -f ${WSE_DATA_DIR}/.firstrun ]]; then
    echo "Initializing data volume..."
    mkdir -p ${WSE_DATA_DIR}/conf
    [[ ! -d ${WSE_DATA_DIR}/conf/wowza ]]   && cp -a /usr/local/WowzaStreamingEngine/conf ${WSE_DATA_DIR}/conf/wowza
    [[ ! -d ${WSE_DATA_DIR}/conf/manager ]] && cp -a /usr/local/WowzaStreamingEngine/manager/conf ${WSE_DATA_DIR}/conf/manager
    [[ ! -d ${WSE_DATA_DIR}/transcoder ]]   && cp -a /usr/local/WowzaStreamingEngine/transcoder ${WSE_DATA_DIR}/transcoder
    [[ ! -d ${WSE_DATA_DIR}/content ]]      && cp -a /usr/local/WowzaStreamingEngine/content ${WSE_DATA_DIR}/content
    [[ ! -d ${WSE_DATA_DIR}/backup ]]       && cp -a /usr/local/WowzaStreamingEngine/backup ${WSE_DATA_DIR}/backup
    [[ ! -d ${WSE_DATA_DIR}/applications ]] && cp -a /usr/local/WowzaStreamingEngine/applications ${WSE_DATA_DIR}/applications
    [[ ! -d ${WSE_DATA_DIR}/stats ]]        && mkdir -p ${WSE_DATA_DIR}/stats
    touch ${WSE_DATA_DIR}/.firstrun
  fi
}

initialize_data_dir
rewire_wowza
