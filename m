Return-Path: <blinux-list+bncBCVPTHE7K4IKNBVVVIDBUBAHGIPNY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6D07E72FA
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 21:37:59 +0100 (CET)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-da307fb7752sf1677441276.0
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 12:37:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699562278; x=1700167078;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5drGOpK4h4bwi+W/QuFfFW6wqqYdxxUL9wBdpR7je8U=;
        b=YJznrwYWEAtPPYoOuevO4OtVCU55vl1qBFaql8wJVe65OD/ourxmN3MCgF42RII3QM
         4OKZ4qW3/26JogI4YByxb0Hvgj2mL8H38gzzvrRAtYI+xYiYqB3BdpWjWuyeaNFZThAp
         w0TddsNVO94KzBM6qHFT4ayxVZ/TkxtQSLJ4hCQb13Pp9hWCkkLYa2w8fkNeP/A/DCOH
         9LWTAXTe6THlyO4vmwa5/cEMnvC8daRJz+fUvt+QTvvJUlKZHv8YIfxHCZ1LFLeqqykQ
         cm9/Y1FKbrYJDPmU0PwK3UAb6FnxODN6FrtUvLsKy+DtfJWYFpdueWG1EabDtzsamiTk
         GM3A==
X-Gm-Message-State: AOJu0Yw0NetOJK3/4ypmkEiOrKO2Ernj/rluTcT0KQNpuZ2jHM3mUatH
	cvdHfYGkAPQjVlG0lB0JkiYJOw==
X-Google-Smtp-Source: AGHT+IF8njja7EB79h4wrSiZBKW5COJ/HbwMoENJAsIFFEXU4pTNKsN8GBPhGJ/wKwyNhhxCpiS+iQ==
X-Received: by 2002:a25:ce8c:0:b0:d9a:d7b6:708a with SMTP id x134-20020a25ce8c000000b00d9ad7b6708amr6849496ybe.37.1699562278510;
        Thu, 09 Nov 2023 12:37:58 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:7157:0:b0:da0:5a0a:9c03 with SMTP id m84-20020a257157000000b00da05a0a9c03ls218821ybc.1.-pod-prod-09-us;
 Thu, 09 Nov 2023 12:37:57 -0800 (PST)
X-Received: by 2002:a81:a110:0:b0:5b3:2ebc:30e3 with SMTP id y16-20020a81a110000000b005b32ebc30e3mr6252518ywg.14.1699562277730;
        Thu, 09 Nov 2023 12:37:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699562277; cv=none;
        d=google.com; s=arc-20160816;
        b=ZWuRwWue9kK18MGL/nsbBs+nRvzFWjVDID9Vy/lSXUImDDNpdfnz1JSq3i9wZtEJFj
         rl2C6hbPgqHcX8GoQ9/7dyqSA61fuI4l7kBOW79dH0Ql9N1tcHAG9hy8p/4Hbol4g8fc
         CFQrIU9St+QLIRhjKXVenrJZdvy+zx88jXV2gL+K3RdZhRMkrCQ+0schVzDzTVAkILl5
         2sr9J17vJ8G9Yq2jAuEh2t01e3GhGMLVRD8p6Q4gaTNeGq0TcwyJ26yjqEh0NWiJ31FH
         0ZBSxetRsvg0yEDe5vKw68DtvCsiK818BHa+qtEqrHSYZ9DWdFfAXMj8rtDFkIfPiwTT
         6toQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=5drGOpK4h4bwi+W/QuFfFW6wqqYdxxUL9wBdpR7je8U=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Vp6D7IVCcv6N4/ZjoX6ZvasyFVEXDlXKIJ5iXrdhY2yu9NK5216OtwK5DB1PJzLpCf
         99WkRhi97JuDpp4iHh8exP7kJv8j1dHebAVc+VSsVaZ82xOuQS7XDMTXo+Q4QjTuMIOU
         smjXHFIHabfk/nowowmp8+aYcGyeufSlQE2gNBUdiHAcx2gH+hjtJyqLjxPkEHTifYKk
         XaTJ44ngef78MiTK1JEO9cOQ4o3iBaVBgYStp5iTP2Y27Njl0XuXn1p8mIXkO1YzvEKu
         SybEHQ/3e2jgnFpKMaBCF/gc63Thfgl+gLMBKMhlr62p4ULFHT+3MCN5eyyNMPL7Qjy9
         R+OQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id h12-20020a0cd80c000000b0066d0418fc25si3320780qvj.267.2023.11.09.12.37.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 12:37:57 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-169-vzBgwTGjOeiv3OpMzvWaPw-1; Thu, 09 Nov 2023 15:37:56 -0500
X-MC-Unique: vzBgwTGjOeiv3OpMzvWaPw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE219812C2E
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 20:37:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id BAE0C20268F9; Thu,  9 Nov 2023 20:37:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B37AA20268F8
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 20:37:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95EC9811E86
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 20:37:55 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-692-P_152SE6NVi_1JkLOrWs2A-1; Thu,
 09 Nov 2023 15:37:47 -0500
X-MC-Unique: P_152SE6NVi_1JkLOrWs2A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 25EE344FC6
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 15:37:47 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id D6C2D100B35; Thu,  9 Nov 2023 15:37:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id D650B1001A6
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 15:37:46 -0500 (EST)
Date: Thu, 9 Nov 2023 15:37:46 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: insuring alpine's setup menu speaks?
Message-ID: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

Hi all,
Karen again.
I do not use alpine on shellworld, preferring pine.
However for work Alpine is the option dreamhost provides, and they do not 
know the program well.
Whenever a new mailbox is setup, I need to recall how to get alpine to 
well speak.
What I mean is, there is a likely unrelated character setting that  results 
in alpine speaking where my arrow keys are, field names and so forth.
Is this making sense?
think of something comparative  where writing to the BIOS would help 
speech sometimes.
Ask if this is not making sense please.
Kare


