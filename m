Return-Path: <blinux-list+bncBC3NDNGRUAMRB5FUQC4AMGQETWUIMBQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A41399097B
	for <lists+blinux-list@lfdr.de>; Fri,  4 Oct 2024 18:40:23 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6cb2455ea43sf29650426d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 04 Oct 2024 09:40:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728060022; cv=pass;
        d=google.com; s=arc-20240605;
        b=PCg09yaNjpHXG2+oeIZqnuFKJHpxbvep43uw7+pNg1nbcQd6mt5Zfnmkl2xM34mo6Q
         0s4wvYSPGpx2ESJ4TvI31sGzjdTKFkJiQABAlOEjSK2BvKWHIcuLmA4fb+x/aP2vV227
         /rHF+vnffRBnAx+kTZHBBdXvyVhAAMwGOqkDOcc23nB8GUo899xNDIiAOW7ygt+s3Y5f
         u9aMYEaJMwu4kbM1RT/0UEGoWX/C6td7rCO/PdRUej+byXFO9942MVcY0WgKjoahG9Dz
         2rTlpCTVTU5WcwcDKYUJIrGdWH4NVO0sZw8a5aGjMomMVbodKSiZlkS/hmlXLVhEjfWh
         3s/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=AJyRoknyyaAjhhfXx2Myx1jMf2vCMdRghMmW8Wlzodg=;
        fh=z4i5pKjIdJ+umHA4MvcLbR3Dm9P56M/1oFh6iNd6OYA=;
        b=Trp3jRgh+I8/YszJAzr/tc8sL0ETVv0gjwPmHrt1/2tTY5uMMEhSl2alexApKJd9LZ
         F6Mu0bgi8VVVu8M/ciJyJW4ly61vSk0uxCWTvupfw/ofH6Em6/1bwufhJ9Wcd9qrbvlf
         gGmQ5A5w0e7QhO05RZ4Kgg5yPaw9pQP7/7uG+QA2AHVziwsKYXlMi1ABDam6sjl3Siz4
         bf7rbB6ctCVpZmGxeO/oHTH9LllWBD3x3uIxVKEWfEBMb5WyQ4IBArioK8xuyXuJQWra
         xhmfxRwLWoCPAS8UNJl56tr0d9JLqXQTNoDg+IpOKTuHMeoP8fpUR2pq9zGqJusPDJLz
         y28Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728060022; x=1728664822;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AJyRoknyyaAjhhfXx2Myx1jMf2vCMdRghMmW8Wlzodg=;
        b=RFlB6VLQbdRMFzG0FljAFWzYd/cog885t/eWIEsyUmU1033+9CB15baCXxp7Jw+UK8
         eJnAtwSanMJPcwK4Ylhu0L7sQ3F1tEWJ0mEVXyFLizsHJZcSw33zmRTOjvnX6GEtLgmA
         rd1wXrN0lRMAfICBit0iqViRBkietqodmHvwIqy/NCp4+h8ffejgfx9fNro4gPeJ3nZT
         0a8Mfli8xzmsXIOFaV+IWogiSe3z9Ug2R8hPmQmcrFK0kuv8yM/GyRCFD9ZVgHUoZqcf
         hRgvDs7kctOKHLHDghYsgMNJ12OHH1E9SZmNRP1aOpE5WcVnJ66xvfLL/INcfbfcubbm
         wEkQ==
X-Forwarded-Encrypted: i=2; AJvYcCVu02HqKk67tc99Cw5cqdMP9KmUcGWXv4B8zP/QsCfKVDASpk4ZgAZIX+3GsPWeY0dbBiW3qg==@lfdr.de
X-Gm-Message-State: AOJu0YwRM185aEp6By4uTw0RAiJBYwvyNsbdHgtwhxkpVKACtn8dUoMY
	W8HAElIQh9rHq95bUODPKq7zxE2wlAxFps8SVgwFjVwEDKafQoZI1lO8gvo6W/k=
X-Google-Smtp-Source: AGHT+IGprtxQFcJy0bDFoFs8fQQwTv1gSW6/ZrJaN77CueC/PKcRpDRMUUaWvN/lOKn8NmDHTnjv6A==
X-Received: by 2002:a05:6214:5d90:b0:6c7:c5cb:b70b with SMTP id 6a1803df08f44-6cb9a306a36mr40961546d6.28.1728060021553;
        Fri, 04 Oct 2024 09:40:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:20cf:b0:6c5:15ae:4b18 with SMTP id
 6a1803df08f44-6cb8fdbc546ls39382096d6.0.-pod-prod-02-us; Fri, 04 Oct 2024
 09:40:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX8E4ObWwhWVi0DRxWZxCON5RCHCp3JHS7jHBZ2QdhqX2O1MEOQYEoIuKYbzJm50MuxVEK2JNgWRxn1Mw==@gapps.redhat.com
X-Received: by 2002:a0c:f6cc:0:b0:6c7:c646:25fb with SMTP id 6a1803df08f44-6cb9a30655cmr38649906d6.27.1728060020449;
        Fri, 04 Oct 2024 09:40:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728060020; cv=none;
        d=google.com; s=arc-20240605;
        b=QrzaZrL5yepGsJUfDsx/EgV74rZ0SqNmd07xn9usu+Bb5vwXqyOdSoV2O8dMKXMkHx
         B1UXobw13HX0w0MnYN0pTG/nrwLcMU5F0v4yr3DZZl0HGPd1SCSm2hlW6iJiD6gh4S8S
         aXWlukVEWjEAtHwZksSzwx3HARJMLG4QGSHrXhsYa15FnHlM2Y2DlqU5R0k4r+vrIV+C
         T3QnXKk6YuXEIhJcv+V08b0/0sjLr4qgBrIpu3h8y6UrqVc0jehZOaW+RvJJhRKe33B1
         oyRCAQ5C70bBGypq02nm+3vJFAWPlD8YMTyU1cYZEYo5jAka/7Bb/gtnKjmfgTaui+Ll
         0blg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=ijfninBuaVimZg4NWOtcSWSHDCrSszxc8R14ciQqIdQ=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=Ym1w/5SWvSHZV7z8sO0fGSuuUWpXbaU45tCvsNTxDOaVFYrWxNnxJ8JxymXLcatZYo
         aPOOf1jpY8Z/X+pHV5DZe9sYUNlQVyE6/mTBArFz1xozKmMHeXCHWrrOkDjW2MOR56kK
         x/Xtu8hR5baY7ctOxlMbNZJBNlA2boS91QT92QNz7Wu6913//jpe+zOCCtRmye54yXtm
         BHbKtI8xcrjd5TqZnDRjVLu37tiRsNga0DlsRc7UihaNpEL01BEuORJca5VqH8tB+bwA
         k1z4r9B6Y0qSu4xpP3wGA6x1dxU46mz47ihe8IwHF1Ds3osrOgjhTlz/aw/GVTnJmwQh
         Gi1g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6cba478c145si1544786d6.498.2024.10.04.09.40.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 09:40:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) client-ip=103.168.172.158;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-562-7xlQhiXwPTCI23I-84eGjA-1; Fri,
 04 Oct 2024 12:40:17 -0400
X-MC-Unique: 7xlQhiXwPTCI23I-84eGjA-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D869D1955F2C
	for <blinux-list@gapps.redhat.com>; Fri,  4 Oct 2024 16:40:16 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D3A88300019B; Fri,  4 Oct 2024 16:40:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D0F4E3000198
	for <blinux-list@redhat.com>; Fri,  4 Oct 2024 16:40:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4E86619560AB
	for <blinux-list@redhat.com>; Fri,  4 Oct 2024 16:40:16 +0000 (UTC)
Received: from fhigh-a7-smtp.messagingengine.com
 (fhigh-a7-smtp.messagingengine.com [103.168.172.158]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-272-CylKgpK5Mpe_zzf9iB4rxw-1; Fri, 04 Oct 2024 12:40:14 -0400
X-MC-Unique: CylKgpK5Mpe_zzf9iB4rxw-1
Received: from phl-compute-01.internal (phl-compute-01.phl.internal [10.202.2.41])
	by mailfhigh.phl.internal (Postfix) with ESMTP id BC17111401F1
	for <blinux-list@redhat.com>; Fri,  4 Oct 2024 12:40:13 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-01.internal (MEProxy); Fri, 04 Oct 2024 12:40:13 -0400
X-ME-Sender: <xms:bRoAZ7V1kdOJY7oWM-Fkz87V58u-rEfMwBpuU6frb0hEZD_TIBJYGQ>
    <xme:bRoAZznYgYXsJGU9sfyLIFaxI5A-SWNew12Y4vGK_kRrbnr_HuDwbUo8w1J0xgCli
    BrTND7F8ttdx_xDGwc>
X-ME-Received: <xmr:bRoAZ3aeeDptItNLibEtDbiGj-_M5mhnmZOxtwJryWk8ql3_Y1ikjmiXpRP8ss4-JH7GF9UOWLsv6-iJO8nWFPtYJtV-NGuYApo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrvddvfedguddtfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvuffkgggtsehttdertddttddvnecuhfhr
    ohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvg
    ihrdgtohhmqeenucggtffrrghtthgvrhhnpeejffffudejleeuffeivedtieettedtkefg
    gfekvdeujeetkedtheefhffhvdetkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgt
    ohhmpdhnsggprhgtphhtthhopedupdhmohguvgepshhmthhpohhuthdprhgtphhtthhope
    gslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:bRoAZ2XoZPGIph2e_lJWCTIstxTMLzXFuRgg_VQovFilpT5cVQzt4g>
    <xmx:bRoAZ1l1IYCsTTpjmdE9TnA3vRVJEBZGgpX72BCPSfOJhF2kDDjrVw>
    <xmx:bRoAZzeJn3rMDAIIGL-t_dQ-O4EzReSnXLerJXRQjQRwnpfrIe106g>
    <xmx:bRoAZ_Fnhi7avkQgbixlWuANBrycPhsY3mmPiyCpu89G7HXFzq8Rvw>
    <xmx:bRoAZ1u7SDfLTkkvYGj4az4pjAdz9SnDDvGKWoYim9odkcxEcXFodzcI>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Fri, 4 Oct 2024 12:40:13 -0400 (EDT)
Date: Fri, 4 Oct 2024 09:40:11 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Has Any1 Ported TalkBack to Linux?
Message-ID: <113a028f-ec9a-7168-756a-6026111be747@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Hi All: Tomorrow we will be setting up my new Google TV Streamer, which will 
have TalkBack, which got me wondering first why we cannot seem to install on a 
Chromebook, and 2nd would TalkBack be an option in Debian? In running several 
duckduck searches, I see a github page of fos. I have no idea what that 
is-and-like many github pages, there were no direct downloads nor any git clone 
commands? Thanks so much in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

