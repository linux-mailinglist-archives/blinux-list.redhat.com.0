Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2E90A425FD8
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 00:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633645800;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JR2lrMU/RUe50ieLADlcITsTzYNf2Gw1BKFM53L+44k=;
	b=bz1xt8o9SwPlo48ZJU/8WPKjzwHlxOMlfZwgXahNTd5B3DUcNeJocSRH3U/izxn/XA1SpU
	j4RSaqLuAQwTl/2l7RAc5Aqll8z42NZnGthXTRtdJ+pMKG+OvIO+6o7z8vYaUitaY7GIsU
	Mz8CMIAScc3l59UM8WJ6mA7Fer9oZSQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-PcXeSF7hPh-QdZCefguGrg-1; Thu, 07 Oct 2021 18:29:58 -0400
X-MC-Unique: PcXeSF7hPh-QdZCefguGrg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 51A57824FAD;
	Thu,  7 Oct 2021 22:29:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33A1E10013C1;
	Thu,  7 Oct 2021 22:29:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DB4114E9F4;
	Thu,  7 Oct 2021 22:29:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 197MTkEv017789 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 18:29:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B5AB82166B46; Thu,  7 Oct 2021 22:29:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD7FA2157F22
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 22:29:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 010611066559
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 22:29:18 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-569-pE120SaWPRqATgMZZE-yVA-1; Thu, 07 Oct 2021 18:29:16 -0400
X-MC-Unique: pE120SaWPRqATgMZZE-yVA-1
Received: by mail-qv1-f41.google.com with SMTP id o13so5232660qvm.4
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 15:29:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=lBxlxoGDV4oxlnG1a2x/3a5dn1/MWxKDvB5cKgnCPPs=;
	b=jIuUIQakniND5n9ojJ/LRaPKyoZS3c+q4P5C0IzYvET7m/VSyOEEeiopwXXA68EbqM
	1dP6zOInIaVl9oAqpDJzuYu0TFHYSgyBGpfi6mMSWkUwK3N/Rl5clmbF7OS66WBPCeoC
	nip9Ko3kR8HfVYm/w+luuDpoKJlivpwK8xkITQY2q0OggXLb5YaUXuwf3AiH2x9eHe+L
	BPrcmTfRv2JkxbucQrj4jhKC+kp73iTxV3aKDEN90mJkeDEoIb6Pwys2NHOIT/w5fspj
	GUz9N6EjIFw18Pnh/Ib7VReJkv36kCsRKk3r/UKzOwO9SxEqdBqd0QBL8l8YzCstPZnd
	dUjA==
X-Gm-Message-State: AOAM5320SwmPZ4snFENw71FU5m51K72rMl4/XhHoWXXmXhVK+HbH004/
	JqgR7wXBdfOBzq/ZAFvd6iIFhRhRKtWQIA==
X-Google-Smtp-Source: ABdhPJwvtp3vgDPzpplMQr5PrXJHOISk9sbcIsdd0Y8jLsOMjt257KMpOHa7Asz6NYhXyGX0aw85mA==
X-Received: by 2002:a05:6214:ac8:: with SMTP id
	g8mr6687158qvi.32.1633645755629; 
	Thu, 07 Oct 2021 15:29:15 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:9f4f:c8b4:2dce:36f7?
	([2601:192:4c80:1420:9f4f:c8b4:2dce:36f7])
	by smtp.gmail.com with ESMTPSA id 74sm554722qke.109.2021.10.07.15.29.15
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 15:29:15 -0700 (PDT)
Subject: Re: Mate Desktop questions
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
Message-ID: <df213663-47cd-687a-e54b-19e457208edc@gmail.com>
Date: Thu, 7 Oct 2021 18:29:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWludCBNYXRlIGlzIGEgbmljZS1sb29raW5nIGRpc3RybyHCoCBJIHN1Z2dlc3QgdGhlIG9wIGdp
dmUgaXQgYSBnbywKdW5sZXNzIHNoZS9oZSBuZWVkcyBzb21ldGhpbmcgc3BlY2lmaWNhbGx5IFVi
dW50dSwgbGlrZSBzb21lIHNuYXBzLsKgCgoKQ2hlZXJzLAoKCkRhdmXCoCBILgoKCgpPbiAxMC83
LzIxIDY6MTEgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4g
SSBhbSBlbmpveWluZyBnZXR0aW5nIG15IExpbnV4IGZlZXQgd2V0IGFnYWluIHVzaW5nIE1pbnQg
TWF0ZS4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

