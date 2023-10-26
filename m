Return-Path: <blinux-list+bncBCVPTHE7K4IOHWPJVEDBUBAXHR4M6@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9997D83C2
	for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 15:43:01 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-66d0b251a6asf12212716d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 06:43:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698327780; x=1698932580;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D1SYQt4rAz03JsAiDkcew6h40BPUbAnnnRUM/oNCCxg=;
        b=u3MW5hxQuI9AN6FMlhZkKwUSr1RgSkKUTuQ8Q73uCRqjilOOrwRdTXCsaK2m3EWl89
         BU8jmt7mH/GuLnCte6tNAFtAZqdnKkk5rCUJxhevjU9kN0CyJGAiJCd6+mN3/4uzvnf8
         JYj4mEx+Pb0YE6IrG/F16NQ7EK4RcTTEgQNV+gMLP4659Q5qtIenAIWCSD4Jdc+IUnwC
         DBXQkOmWWHdghyMz8sAsG3YT+Oc01kBiZ6CTXwG0EBt5C3LuWjwvO6RgP6BOA0G3dI3K
         rEemf+YjlWGd/yXZkTu999VDpRC+y5K9L2uF9KzRIY3mvGdQEl5QVP2tFEhcgMS02W+B
         FRBw==
X-Gm-Message-State: AOJu0YxJtBeu576tXnZPM6KOjfsdlaAUcT8aNruZQI8NC/CGws8blmt/
	SbxhkxRlOsxEsjC93o2wY+n5IQ==
X-Google-Smtp-Source: AGHT+IE2ow14Kos8fN5BDjvFMLrND+C9lBreUdA7W8egcvJ37cU4uv/GWYbDH3F42TsS7i5SVI+qmw==
X-Received: by 2002:a05:6214:2401:b0:66d:a50a:2c6 with SMTP id fv1-20020a056214240100b0066da50a02c6mr18951254qvb.63.1698327780128;
        Thu, 26 Oct 2023 06:43:00 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1930:b0:65d:592:a279 with SMTP id
 es16-20020a056214193000b0065d0592a279ls25693qvb.0.-pod-prod-04-us; Thu, 26
 Oct 2023 06:42:59 -0700 (PDT)
X-Received: by 2002:a05:6214:212b:b0:66d:33d2:4ff5 with SMTP id r11-20020a056214212b00b0066d33d24ff5mr22883251qvc.41.1698327779370;
        Thu, 26 Oct 2023 06:42:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698327779; cv=none;
        d=google.com; s=arc-20160816;
        b=XfKIyV2aUowFZqm1r4Qcbg6pBRbfAUydD6ldRuIi24woyVyUbT2H0FyoLQU0vnWrhB
         EaH4HMYIAlEEU1hLWNrdL/dV34C0r9veY/ZnU8qSM84qkuHuyMNAafnHpx9jfwa4I/z3
         04U4Us30mH6i+jQy1g6FNAs+JUmubbXvcrmVqOpN3UAZRnAuxsViUFs+XToFEDFs8P18
         OBH+iQfJqMJHI1/cT4zWkCnZRL3n2cjIRJEPKtzR5/FS5ZfzjPi1TjVtukjghV7FVvJW
         coXtEN+M0GzPEQfNkXV+QpN+34QJqBhFecvrWLB4mNJ+AmxlA4QqGOd3zh9Em9hcZXHR
         PyUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:cc:to:from:date:delivered-to;
        bh=D1SYQt4rAz03JsAiDkcew6h40BPUbAnnnRUM/oNCCxg=;
        fh=j+bV4wrP5yQqqwG71JUT4zaE69baWNfhmp9Z4l1LSW4=;
        b=pxohaRJ0/439gUlzSVcCAvxU07tNcjftQAe3W3C1wcyHE5oXPVPO6IP+oejXddWRm5
         YsMRFMpWG5GJl9wXlbXgYpsl0qBUKNG4cHLVaW8flsquGLmf6mMK+BjKOQ6+2ljm29pG
         cxQhgyeNxB29VhFWIXkOufMSe5SCbhAELBj7NohnsDQwvfXjnT4rI3ICbLV99FdPmhdM
         qbuxCtSF2hRDruaHLY5tg33zneR35CLG7JrZOQ6UbuSRghGsUypGU/EGAgFaWB4ZiFFw
         O/2EN2Og4sEh82wTj12Dz7DVIQsNjGjA4nRVLDOI75RYm5Ig6NTz01puId6rLv+QITyR
         JSAQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id j16-20020a0cc350000000b0066d049df7a4si9453843qvi.325.2023.10.26.06.42.58
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 06:42:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-244-wu6nYuekOeC1o1oxbciZNA-1; Thu, 26 Oct 2023 09:42:56 -0400
X-MC-Unique: wu6nYuekOeC1o1oxbciZNA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2BEAB101A529
	for <blinux-list@gapps.redhat.com>; Thu, 26 Oct 2023 13:42:56 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 284B040C6F7B; Thu, 26 Oct 2023 13:42:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2155840C6F79
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 13:42:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5B7329ABA1E
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 13:42:55 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-257-l1ELdJiWNmySRiktE9hPjA-1; Thu,
 26 Oct 2023 09:42:51 -0400
X-MC-Unique: l1ELdJiWNmySRiktE9hPjA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id A1F9540508;
	Thu, 26 Oct 2023 09:42:50 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 6B046100B87; Thu, 26 Oct 2023 09:42:50 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 68AAE1001A6;
	Thu, 26 Oct 2023 09:42:50 -0400 (EDT)
Date: Thu, 26 Oct 2023 09:42:50 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
cc: blind_linux_users <discuss@blvuug.org>
Subject: seeking a sftp site to test a problem?
Message-ID: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

Hi folks,
its karen Lewellen.
I am having a computer built, with  a problem coming up.  in fact I have 
the same issue on this older machine too, which is why I need your help.
When I access my workspace with shellworld, either my personal site one or 
the main one typing exit causes the computer to reboot.
The person building the computer has the same issue, typing exit causes a 
reboot.
shellworld is my only access point of this kind.
What we need is a sftp location, user name and password, where we can test 
if the issue is general i. e. network card, site specific, or tied to the 
sftp client.
Can anyone share a door?
Will likely not need access for  more than 48 hours.Thanks,
Karen


