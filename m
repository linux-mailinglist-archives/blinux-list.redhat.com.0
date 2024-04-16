Return-Path: <blinux-list+bncBDYPVTOXSQEBBX7Q7OYAMGQEJF5CC6I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 823C08A7792
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 00:14:57 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5aa6b7c0a83sf6247912eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 15:14:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713305696; cv=pass;
        d=google.com; s=arc-20160816;
        b=UbjnkJ6NDE/KJPgoWp0CVJr70/mWki2YjJx6MPw8pJHTNk6s4DIwyteGHQiaDR0tss
         65XCZ+E9lWX+ySs8dKe7/MEE5FZvBg6FMR6GtxFdN5kamC+j05/lMQK2xwI/SsSE/hil
         ox8BZ5rQ1LAHNZzIjes64ZvyZWPF+6bbJ0o76X3xrZUiRTS4+0kDOOitU4zt+jFWZbm3
         +yX4o9+8AKVbbKWK7VzkudMQfs8xd4TW656N0c20jpXtfGTdxLakQJbeO3imzcWKbYPP
         cfi0P7UvutMPm/AdqhRHnQ+GN4RDVo+wGBHbnS3v6mhxVALDnUMeIyRgPcB/hDhtUCmE
         DMgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:cc:to:from
         :date:delivered-to;
        bh=e98e1iXaROeTQ+Du2CNLybRyu4T7tXmESSTA88vyJiU=;
        fh=UdixUiDPvryv7Jtb3e6B/hGx/sJzT3ECagACo6OKiCo=;
        b=sv4lrkaST5rvBrg/6JWhfSLz1k/9d1bDEVdTd3mpcq49VpmD/e1XQO35ckXQbPRVMB
         Ej1zlZ5iUuLGOL2oOHxoYHh/2mNnUn1sUNcYNWyOkxXLx9mvDiqLZ87wotginiKakp1Z
         SbfZVrTChHXf7JnVRZBfLc9A1M5e7nMdIFKDyliI7o3i4lCMBXCaIjzl0ewITVeZzxXG
         c0hSe7wS8pPu6irx7cluPemA5fKss771ARF0XLj/cHeDK5hV6wL2K767Bs92B1h5gb4Q
         KVVh1xd/6ePH+tlUJkgSAoBlKQvIy0gAqLjxTTVBryuvxtNj8zJeJ9udJy+4Pjkz9rF6
         sD/g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713305696; x=1713910496;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e98e1iXaROeTQ+Du2CNLybRyu4T7tXmESSTA88vyJiU=;
        b=rBLU5Ac/KhAuEXieoMZFBmTDJunlSU5WlqF9GZphJm6He/PoAeszoObLNHnvEkBjnT
         p1bnh2E0sBUb3MK+Gebqz4Sl/Ox12jw+Iu3079coBehr9DjFmMu/92aeRL9IHt+gU4gM
         zrF6GPrm3TsIJeQyEsJqvRHyAEHD4A1JG4LkcF0F2pIE5gtlIYPwudDEKOaFJ2Sbt+ZN
         U0ua2ugppO3z4vmNbmLtmPqFrwLoKp9s8dGGE2ab7EJevEknHkaXlnzs3ah5j/TgSvQ1
         ntuwimXJsqw1vTezbsekFsFkhAJK66t7tns8303U3SlsNOngMNdGI25gLNl1LQgLi/wu
         i3ew==
X-Forwarded-Encrypted: i=2; AJvYcCW+Jz0uAvvTyj0sTjETTvE+X5fXjqrI7Jzft+lTrXQujjl2kxCmKsya+ZS/mS0hDP56BCua7K2xSHHqYyh82alaPtUejvtw1j/B
X-Gm-Message-State: AOJu0YwiAaCB+Ya7zyfZ9rsdJx1TPnEqgvbMKgEnGuhppC8YGZhuvRsZ
	4LmP4iUfkhK/vYHuY6p5IfPPksfO+ehep8rNTOdCP7eP7v2fAB3IyivX6PSV9/M=
X-Google-Smtp-Source: AGHT+IHqPobPWTRxdB43ISU4shP8saU7mCvr4tY9Rmc0ixA/+tP4UKg8MzJs8xuQkK8mcZ36jQUSZw==
X-Received: by 2002:a4a:1445:0:b0:5ac:cae6:a27 with SMTP id 66-20020a4a1445000000b005accae60a27mr3192618ood.0.1713305695951;
        Tue, 16 Apr 2024 15:14:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1c99:b0:5aa:5299:f9d9 with SMTP id
 ct25-20020a0568201c9900b005aa5299f9d9ls5302192oob.2.-pod-prod-02-us; Tue, 16
 Apr 2024 15:14:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUKm3oZPwo+WGyNGB1om6MncQeVwbmvOXNohxIH2NbAIX8tqdP8aE+o+tLJrAaXIAl6TTdDXO9MvvEXXA9E2v4eF2krimAY8V6KlKmb
X-Received: by 2002:a05:6808:315:b0:3c6:f7bd:9825 with SMTP id i21-20020a056808031500b003c6f7bd9825mr14720952oie.22.1713305694887;
        Tue, 16 Apr 2024 15:14:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713305694; cv=none;
        d=google.com; s=arc-20160816;
        b=OCd3hxRcO5piW+yXVpwEjeaXNjkSroW6iiu5SZG7N1Q2eTuC7JjwMgxvOGR30ki4oS
         Cb/Uo1tD5p606JqrzXYwjGdIFHMH1T4QxPHQwVFR6YtUszJmomYqRRr/CqjB7Qgjo42O
         Z3ihjo/xND2I3AXKBYjIaRiZ7Egca0Kryofd7+62PEpEM4D138mbJRyHtWD7KvRkI4Tz
         Of1bUJD+mmyuqHTd3zMX0NprGqhnWSL9vdGNT57+DY9QgP1Gep20V3HTdDwfdW25wqMQ
         pQ5jJiZydQXxj6xM0ouV1gndcOec2oKy7TuE5h48DxofxPnKx4bDRAonGhezWBRDAVXV
         4mQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date:delivered-to;
        bh=YhJpvInkSPlcty/mybT5Z9k1L/8JWiJsxuql8Qzk2rg=;
        fh=xROBbd6Xc/A4nro5xHsx7J4hynJjJjS5vyRbzAkJSDo=;
        b=k+oZvjbElcCZOPcP8SWZ2NlMnQLkGEeJdBilRzKLr3kmovnWydALsSsLnygmTeKuuu
         BxJIIOrPoMJhCZvMWOpQsw0l7kM+hei3aZDCLLRriuXhzWwPjdmBxILm81gDrbApqSlE
         iTJvB6oPpxUjOc5huwMdXHLY46ChpG4YSN9NevtGGMBSzU03MXc6bAxDkwmgjneRPP88
         GwB+XN18O6vxO0j+nbpeqyXYhF7lH58eQB4dvT6CXQRGiGXamZdPsbmunQQ8MjiOoCBu
         eMJxMBs6AT1LAz4MHIq5u+HX6lwEizzBUB4VveWt9iwpVnGP0X39GYjU39aVepIIFDvl
         NKyQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id t16-20020ac85890000000b004370939eef7si5753632qta.532.2024.04.16.15.14.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 15:14:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-228-ycEGZ4ldP_aGHmWwSlW9nw-1; Tue, 16 Apr 2024 18:14:53 -0400
X-MC-Unique: ycEGZ4ldP_aGHmWwSlW9nw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 64BDA80021A
	for <blinux-list@gapps.redhat.com>; Tue, 16 Apr 2024 22:14:53 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 6121C49109; Tue, 16 Apr 2024 22:14:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2943549106
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 22:14:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1303806528
	for <blinux-list@redhat.com>; Tue, 16 Apr 2024 22:14:52 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-280-MwHu5lyhO5ObnuzDyzuDXw-1; Tue,
 16 Apr 2024 18:14:50 -0400
X-MC-Unique: MwHu5lyhO5ObnuzDyzuDXw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VJyyL4Pvqz4g4P;
	Tue, 16 Apr 2024 18:14:50 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VJyyL473pzcbc; Tue, 16 Apr 2024 18:14:50 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VJyyL43m2zcbC;
	Tue, 16 Apr 2024 18:14:50 -0400 (EDT)
Date: Tue, 16 Apr 2024 18:14:50 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
cc: slint@freelists.org
Subject: ctorrent.sh update
Message-ID: <255d1132-0fd7-e321-0381-eb8671bb6f91@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

#!/usr/bin/env bash
# file: ctorrent.sh - script to get torrents
# dependencies - ctorrent wget beep
# commented out gtorrent lines show no longer available torrents.
gtorrent='https://seedbox.slackware.uk/torrents/slint64-15.0-5-iso.torrent'
echo "torrent availability checks ahead of download."
echo "decoding meta file before downloading."
wget --quiet --spider $gtorrent
if [ $? -gt 0 ]; then
    echo "vaporware error alert!"
    exit 1
fi
echo "checking torrent pieces before download."
ctorrent -c $gtorrent
read
echo "about to try download."
ctorrent -s ~/Downloads -T -X beep -dd $gtorrent
# gtorrent='https://seedbox.slackware.uk/torrents/slint64-15.0-5-iso.torrent'
gtorrent='https://tails.net/torrents/files/tails-amd64-6.1.iso.torrent'

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

