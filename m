Return-Path: <blinux-list+bncBDYPVTOXSQEBB2UWRW3AMGQEQARZZBA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id EACCF956C54
	for <lists+blinux-list@lfdr.de>; Mon, 19 Aug 2024 15:41:00 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6bf8cef1c5csf23498506d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 19 Aug 2024 06:41:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1724074860; cv=pass;
        d=google.com; s=arc-20240605;
        b=YQKJzoDkKTCo75kkj31xZAGUdSmSOyDhgBi5c6dZJ0/FnmIRfsJ/aVFFnmyK+q9ONu
         EG+u0LRdnE17u1SRyaQycUlMApsWJkEn8t3VTirxjX0m0mNueY56TbBICPf169gnh5aV
         81U4J+3Dj6xwb38MSg7ErjV1d2iOJh28rtpqEdDTaXkc35r2TieKvsRu00D2+zPN0sAN
         SFQeTkvalTAHscYxMQ+08AEn7r5tFIa/TIIb0vrZ96BXFvnTf4qx6D7kV7m2SuVcRzXT
         lcGM2cTofHJN1CBXXSWbcrIvCqIkSr7pAuO/OrbirR4aJigE/qTvDu2phEFD23GaiTxM
         CfdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=BoZN+LzAjIzzu6NeUuwJ54gPGMeDMpxU7kh6Tem0Ms0=;
        fh=NevDEGx4m1/VXzhJxs16TGQ6vdkxPJKdgnn3WXXJITU=;
        b=eP3V3RCoUnBqEOH3Usy1qJpgufJjbAYtQXVFYmFBfPjDWYcD/Px6ZYi898qmWoAwdd
         SMrku40w7g0++stPk4055ediy6aUoGNWIu5hZilBdKp6+nZN7Q8AXBnxfsp/uDD1L2Lr
         4ZOm6oPzeF6xrYIiVE3eeBbn0TwZ0Oe9siGZ42uNWXurqEVzSH34RlDVeUrYJ0SXbSNH
         EW5A0sxkUsGd3FvLKUFklepm1zeFLn7ybkmrpSUtkB9SFwen5E4wgFSVOOXO+ZdKFfva
         Mfx7SKXH5VR942V2JEwb/WwN8Rknx2L7vmn/ikMQKv1EdhC6zJO5CT0ykU0CN59rwQwN
         wW0Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724074860; x=1724679660;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BoZN+LzAjIzzu6NeUuwJ54gPGMeDMpxU7kh6Tem0Ms0=;
        b=uil1DElCWNUFc6aSVQ0IZH6ZCgSYUyPRIHna+pvTNetBp4YyrJD1wzOdUtx/d0JZr/
         spw/RCLySC97uS+jwURtBOXwYe+NWvSYuZaLVDSciIG29/K66PIympeRLCAxP9eRA2c4
         v9gnftzbrt9o8uBbpgYK2suDKfZXTl98Sy3MkJHw0hX5NCdkHJTiku7IaHubCOGqk1IJ
         DB06Sp6UmA19Iq2qDqd938mqyZApmglvXDV1lZbVopMZ9i0YrLhgiWoEYowX/19v0ogf
         Lnsoyll/q/NeMs+y+lh6e+PUSGsx+5GpQ0HwbmKsJxd6dQcS1GdBnmXd/glW396dL9eK
         kH9w==
X-Forwarded-Encrypted: i=2; AJvYcCVEWaANpDKWFuyQ1afDC9Cp5F9j/Nzb1NZVko0TL8LUzSHjKE+hMnDdA4KgBZYMXxLOG7P7SrgXg3x3/3U/mmpA5dQLJ6lQ1B+R
X-Gm-Message-State: AOJu0YyIYh+H8VycG34Eko6LmFnfxJ45atpU00Pi5hlmxgtoHcF2C1Um
	u/lYWFdcUos5v+mSn40KAvWzqr0Ww4Ra8DImyAQicH8XUdBCSmU2JHVXmzgXeFY=
X-Google-Smtp-Source: AGHT+IFfy6avd2TSTwK+OS/0ksmMd9OcFaUHAwIX/Y7OIEzvkSYzlmgQR7Yf9MiygHGZtUWgQyJZNA==
X-Received: by 2002:a05:6214:3f8b:b0:6b9:5fb9:113f with SMTP id 6a1803df08f44-6bf894e7e0emr105397656d6.27.1724074859405;
        Mon, 19 Aug 2024 06:40:59 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:4cc:b0:449:2608:3035 with SMTP id
 d75a77b69052e-45367468102ls56562541cf.1.-pod-prod-01-us; Mon, 19 Aug 2024
 06:40:58 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUlItenGU61/6EEeiiAB+HQuvco7SvCPfNA2hgBkPcgsXbfwwnxzni8XSJfxg0ZFRE5Imi8j6/UjhOU+iMw5a0FiBgLMQJ6xOBKANDp
X-Received: by 2002:a05:6102:304b:b0:493:bf96:99b5 with SMTP id ada2fe7eead31-4978855b13bmr9595199137.20.1724074858370;
        Mon, 19 Aug 2024 06:40:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1724074858; cv=none;
        d=google.com; s=arc-20160816;
        b=KmeCbqO7p5ujuy4ckwJHYBhVJkMHqwWKXge/xc2EcOK8jyc+zcc8GTCVMOeJVWMzNZ
         z1RW7XtxCEj/bq7xzNScfcRmtyGEW6OqlpLj99njt41JegiCwrdW6EUi1h0Tl8WSvD0f
         BSBHB4xIPPQIy8rFtq2TvkFtioqAdbbPyWYs8L00mFMdDNHcsYoemNs2uf8MrY31g/VH
         oKvZrLNuQMk9J90dDmgrrwyVjL2Ao48l4E3MTE9z5sJ6y34SLMtuMNNRx8OMQUk4Urjq
         LNM4HUdRjQdDUc6dclRVSfJfQ0vz/i5XI0FcKD385xXcIblIf5zaBW7uJARhQ+zWndBc
         NQPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=LBQuI/OSxC+HLgP2022eHNQnCNOmbrHz9Slje0FHWPs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=bMj1aQQvQ8vDwsyKfAZbINwUEXik4AUbWOvCmJQVKHZRsmbyFyXbsQdYuqZS18SNsY
         kXeRRzoaDiXXmPMJh36GzyEOZ3aT4V/QT+MKFpcg6PMH8b0XUPSS0SXWBjZ34ShLbX9f
         +QIUkkVmIFhCaxAMUNv0tDdkJm13b80SwsI/xxk4MpmzUgoEQGq/qa4KAPZuEcGeWipL
         umE2W7aI9AEri/2K3jdJPxxmcttaDRoN/FaggB5t6VOpUkSwwdo3DZvNRhWLOFFAZsEH
         4zis3Wk1Xl+/fXY8cmbl0Jnu5dcsrTAASDSMTXvcJOCfZVKHobd1tCI9qWlOGL7kEU8C
         btzQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id a1e0cc1a2514c-842fb9d83b1si1369359241.121.2024.08.19.06.40.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 06:40:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-225-pst8x8oLM7CWM0XPAs8Rfg-1; Mon,
 19 Aug 2024 09:40:56 -0400
X-MC-Unique: pst8x8oLM7CWM0XPAs8Rfg-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 31D831955BEF
	for <blinux-list@gapps.redhat.com>; Mon, 19 Aug 2024 13:40:56 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2D2301955F44; Mon, 19 Aug 2024 13:40:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2AC4019560A3
	for <blinux-list@redhat.com>; Mon, 19 Aug 2024 13:40:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9C40A1955D57
	for <blinux-list@redhat.com>; Mon, 19 Aug 2024 13:40:55 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-320-MMUEDhSrO0CdMLu55Wj81A-1; Mon,
 19 Aug 2024 09:40:53 -0400
X-MC-Unique: MMUEDhSrO0CdMLu55Wj81A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WnYdd00zPz1RY
	for <blinux-list@redhat.com>; Mon, 19 Aug 2024 09:40:52 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WnYdc6sZ7zcbc; Mon, 19 Aug 2024 09:40:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WnYdc6qRbzcbV
	for <blinux-list@redhat.com>; Mon, 19 Aug 2024 09:40:52 -0400 (EDT)
Date: Mon, 19 Aug 2024 09:40:52 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: temporarily making /dev/sdb1 read-write
Message-ID: <99ac0a69-8df4-c2d5-052f-e27b06eb9a11@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

In knoppix-cheatcodes.txt reference is made to knoppix.sh in which it's
possible to store commands for knoppix to run on boot.  The only problem
is the knoppix directory and its contents are read-only and if I can
adjust that to read-write I'll be able to add a small file to a flash
drive and maybe have adriane come up and talk to me.  The adriane-knoppix
torrent produces a 7mb file that no longer works on modern hardware and if
I cannot get this working with knoppix I'm going to write this
distribution off as accessibility vaporware and move on.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

