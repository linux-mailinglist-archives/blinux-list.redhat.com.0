Return-Path: <blinux-list+bncBCVPTHE7K4IJVBV5VUDBUBG2SPCBG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC4683865E
	for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 05:39:55 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-68198fb0ac1sf36066086d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 22 Jan 2024 20:39:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705984794; x=1706589594;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ap1e7MU47EhPSEqmqpWJr+HvioD6nBw1jD+89N/uNmE=;
        b=Zp67ITLu5WEIHvCx+d04Z1lwnwbA5gZ5zwyqdCr1Fg1iPDPscy2KpbagG0s58Y+jbC
         sB8IdiOxEqWGyJAMV2XqPfZU+J7zL+e/bkTsdy/raZ3i4kfZS7topuLctpxPD6At5UCe
         zFPjSX8ABKVaX7GbC2pkNdRBpXxBjsCWJFwuGQ5xVo1TJiNREkCFUqKlp+0SCszrdqh/
         w3RmA9fAFh8HAhsm45tWC2FSAti9mk2PJpZc0RvkGTk9MkFWKhhVcG7jP5urs4mhajiW
         7DYs6UGAlX/flatSWRq91jayduFPt/e6ltwVX1Qh7oceA3T1GfK8JgUmNHuZg6tRjs5z
         ZD1w==
X-Gm-Message-State: AOJu0YyPQkRb65CXhVN20lkJ8ZzhODykug+PFJ7XzES4oVCBU/k1Lq/D
	VtDhkJhkyVeatAbb9ysM4DOZkoC/8zb+oDKKUSApA77vjq8eThh1X0oWFgKMM1s=
X-Google-Smtp-Source: AGHT+IG1QJTLNAsYE9kfprLd0ESBg1kIT5klwaiBcR6K3evz/naz15YWlEPaxQ5F1xCW7ZKk3Hnm0g==
X-Received: by 2002:a05:6214:3011:b0:685:d0db:f2c3 with SMTP id ke17-20020a056214301100b00685d0dbf2c3mr288066qvb.32.1705984794414;
        Mon, 22 Jan 2024 20:39:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b345:0:b0:681:551c:1348 with SMTP id a5-20020a0cb345000000b00681551c1348ls1098133qvf.2.-pod-prod-08-us;
 Mon, 22 Jan 2024 20:39:53 -0800 (PST)
X-Received: by 2002:ad4:5c84:0:b0:685:482b:a with SMTP id o4-20020ad45c84000000b00685482b000amr392181qvh.26.1705984793581;
        Mon, 22 Jan 2024 20:39:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705984793; cv=none;
        d=google.com; s=arc-20160816;
        b=KZPUVjBeX4EUrlAhn4GXht8M8XqFi22BDCiNeG2KD6dFKjHwk4AxxMPQ8G/jMliJ6y
         IqdjGNtQWrdw9GHMc2LypX7V4MF7ePQXZs9G474VB6kU4DKDhqh+8dWZulk9NIstJ5mN
         B2Q4tmApg5LDya5oBTOcKTqSZQCKbXRCGVKo0bHI0OreFFf+DHVrAwojtPS+8tny2tS2
         iqu1FeU3qjd+9/Wx4dIyBUVmvj6AyJBagEv9HNPlGnZi9xmYEkapbLaKO6tjht1sp78w
         6ENX2TwgrAECX4gMdRgmerOWdyFWMZGdagE36C1RH4PDKTeGSxmHS5oyAjI9umXqj8pu
         1+AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=Ap1e7MU47EhPSEqmqpWJr+HvioD6nBw1jD+89N/uNmE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Gr4Th/We2UHv2Jy+Lhsp+jlMOLBACkkFhFFdVId88g0lO1RcXHACXYjTc0pjZ1LtiF
         XRWf7Rm8UcFVMskOmmqUe9arMtkyTniJWSReeboNd6Bk9ZuhBZH6VAxJxIomJrYo+40w
         Bejg8U4vk4jj0r1utfdt9ApPwB2tKR8QgTd8DhEqNPouf3WQPOxMR9b/mppGr6Cw8Gdk
         ZhSmUawa71fR5zhdsXB13zBeNy+lr7K7S+WzSxhRh5jMsXF5vEeI84sp7UxfjAOedpoF
         Zn/cu9FOo45GueiapOvMARGkfVlTNHzRuRn/snpgfScvjr7Zafir0uxdflpz6hQnLzE1
         /AYw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id p16-20020a0ce190000000b00681876a023csi7167319qvl.128.2024.01.22.20.39.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 20:39:53 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-244-DCgsCqU6Ng69wDI9d3ZSjg-1; Mon,
 22 Jan 2024 23:39:52 -0500
X-MC-Unique: DCgsCqU6Ng69wDI9d3ZSjg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 894481C05AD7
	for <blinux-list@gapps.redhat.com>; Tue, 23 Jan 2024 04:39:51 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 86BE2C0FDCC; Tue, 23 Jan 2024 04:39:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7FD38C0FDCA
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 04:39:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CE7A1013661
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 04:39:51 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-136-9rQTD_DcOTSQ49Np7J6nng-1; Mon,
 22 Jan 2024 23:39:49 -0500
X-MC-Unique: 9rQTD_DcOTSQ49Np7J6nng-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 570AA40508
	for <blinux-list@redhat.com>; Mon, 22 Jan 2024 23:39:48 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 20D821000B0; Mon, 22 Jan 2024 23:39:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 1F60B10007A
	for <blinux-list@redhat.com>; Mon, 22 Jan 2024 23:39:48 -0500 (EST)
Date: Mon, 22 Jan 2024 23:39:48 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Linux e-readers do they exist?
Message-ID: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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
Let me spell out what I mean.
a portable Linux based in terms of being  open source device that can 
manage at the very least text files.  Something easy to load files into, 
as well as if possible add an open source edition of speech synthesis?
Some work  being done  on dectalk if that resonates.
Does such a device exist?
Karen


