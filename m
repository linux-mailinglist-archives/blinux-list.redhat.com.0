Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3664BCA78
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 20:16:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645298210;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1MmbB5yauwMbwgE+Cov+9Mqg94p6NUNwGke6SkduLPE=;
	b=Vev/OwefId05ZeuPdV7HkqmuVMQHnln6ODMr9UV8WyeLlkxJNejGqMh64VqQ+4uZQzxzgr
	DNwxnk0FSHAgyjpcbOTPJDoB93saTPo9WznbqKt11KcptulALlTBsbx9oAL97OGTviwgg1
	js6yBp57M51r6oWowMSiP5bwQs/JY7A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-127-qHeTdvQ6OzaXqoAwfqwZxw-1; Sat, 19 Feb 2022 14:16:46 -0500
X-MC-Unique: qHeTdvQ6OzaXqoAwfqwZxw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 328CD1808326;
	Sat, 19 Feb 2022 19:16:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EAA5F5F707;
	Sat, 19 Feb 2022 19:16:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 916AD18095C9;
	Sat, 19 Feb 2022 19:16:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21JJGNri001759 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Feb 2022 14:16:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B35382026D67; Sat, 19 Feb 2022 19:16:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD8AF2026D65
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 19:16:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B268B811E76
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 19:16:20 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-496-bbeotbpAMzyuktNiMG0Blw-1; Sat, 19 Feb 2022 14:16:18 -0500
X-MC-Unique: bbeotbpAMzyuktNiMG0Blw-1
Received: by mail-wr1-f42.google.com with SMTP id d3so4362927wrf.1
	for <Blinux-list@redhat.com>; Sat, 19 Feb 2022 11:16:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:message-id:mime-version;
	bh=2vEfJvz+629s51WkaHTWAYxiSTLFDRfSEEwm1JhHPfs=;
	b=5J7/bYwJypAdfaxPrhamYa2J1quw5mBY1wbxplwTm1dZD1RWrjaczpjywLM1v2hUgq
	COnM/zv0NrNumhdStS/FWqL95mywAeS8sfKhtxXhvLpTEpsF940AmypTH5N+qO8o0ohJ
	1hav+e6M7Q+10NdbhIkm+sZM/9/piuxquxpcDj8mi0x7BDxXsIb44OJAhA8wLIhLwJdN
	bNx+3prC0LgraZV5eFWq2PMMswF0VO6jh8z7UwaKuRdZkjlV8uO3KyJOjRQPh1SH+omM
	Fki5GBmcv2YZELMLnFUNbeqAsLhSNOV/no5Ev/ts1zhKX2t9dpdJNjIClDK3JbR4uRO1
	3XQA==
X-Gm-Message-State: AOAM530Ii8xJJx24th7L8OyIMRG0uy1Dw4ktcqdaJcYHv90yx88Iv3k+
	Wx5BfB63Jj5CofUbuIatCqlt7E8rFT13Fg==
X-Google-Smtp-Source: ABdhPJyAuzPtFGLVwDVgSEXlmyFks3S9M0DZnqHkFkzAJ2MaZ6m+wAzqAwi04RSAatc/b7ZpveBKyg==
X-Received: by 2002:adf:8284:0:b0:1e3:25a9:a4e4 with SMTP id
	4-20020adf8284000000b001e325a9a4e4mr10397288wrc.604.1645298176892;
	Sat, 19 Feb 2022 11:16:16 -0800 (PST)
Received: from brandt-slint ([197.184.176.211])
	by smtp.gmail.com with ESMTPSA id
	o6-20020a05600c338600b0037c322d1425sm2934608wmp.8.2022.02.19.11.16.15
	for <Blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 19 Feb 2022 11:16:16 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.local>
Date: Sat, 19 Feb 2022 21:15:56 +0200 (SAST)
To: Blinux-list@redhat.com
Subject: Installing Jenux
Message-ID: <f59be0f6-98b7-1f47-7992-eb1e5aa38a5e@brandt-slint.local>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,

I am thinking about installing Jenux on an external drive, but cannot 
recall if it gives you the option to do so.

Otherwise, I might just copy the relevant folders off of my Slint install 
to that external drive as a backup, after all, I'll probably hop back to 
Slint in short order anyway.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

