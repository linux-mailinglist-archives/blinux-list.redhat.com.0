Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B4FFA3E1DA9
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 22:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628197048;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aVO9DQ2boziSEV3IERo24scj510uIONZbl6iHa12RCM=;
	b=CklLU7OGZGzGIG9jbANiK+QwaTTrx4zoPYoW7rw17mYHPDOm0nSo6b3DIEsfkrDhtBJS16
	41hd672kgjghNoSeeaAlBHxbLNmluW0Nuvgdll20ELVUsEibC+69ihpMx3mQljN+6ltf3i
	GkfTGBsIPz+u04BS2DlwtyrmHQ44gLo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-QtQj3FYfOJOON711fMRXWg-1; Thu, 05 Aug 2021 16:57:27 -0400
X-MC-Unique: QtQj3FYfOJOON711fMRXWg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E46C3100A24D;
	Thu,  5 Aug 2021 20:57:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32A775C1B4;
	Thu,  5 Aug 2021 20:57:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8CC324BB7B;
	Thu,  5 Aug 2021 20:57:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175KnPiZ028726 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 16:49:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3E0D4201FD0B; Thu,  5 Aug 2021 20:49:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 395FA2166B49
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 20:49:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 364B189C7DB
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 20:49:22 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-231-kH7fyb2LMsqFqF7HSb5-lw-1; Thu, 05 Aug 2021 16:49:20 -0400
X-MC-Unique: kH7fyb2LMsqFqF7HSb5-lw-1
Received: by mail-qv1-f42.google.com with SMTP id cg4so3694864qvb.5
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 13:49:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=iNveprctE9wf/+H24759lXQ0ZLKUmj85bt8JvLw0DG0=;
	b=Y8nc5lnkPkbNMqpdrjVGA1TcEwFpyYeN+fzTxqDN79wliDYN9PTM6a+FrBavcYsekU
	2saiVklxfLojbo8+bpkpw5u1gC+EY1a+zw0RmxYF+baP8X+Q79FofuNIcUjYK0C8Gi0w
	GlFrVJoiVe4Wc8kzFF7Vum+mb0MW/jxAqMzeJ8inU4uAaq06SPYvm5rU7s+Z9oUR7Lci
	NPH8TOyZqzNzz4+CbLY/0uF5n2b45zIrlgwNv4nFkRaPN6U7TVCH3TvMIEYfxOKkWoxz
	YqeMmbqSzoKDtSscWWG+RAWI+9gjligT0/JWacC6Ywhbi1IAXniIrfcCLFiB+XeP3LVV
	K5PQ==
X-Gm-Message-State: AOAM531gOUwhvdrZVrwFtCJ7DSstxbqmzmfVATS1txPQZiukUbJD2Y7l
	6bhHDGTuNVsQv8xzeJFlDgqAQGR+dTLBGQ==
X-Google-Smtp-Source: ABdhPJxQuUymPvn8r2XI3eYI9I5HToexotyp/a7ul5uEdpycU9eOEUvfF5fbAnaRYYgDrCxRWMKl7w==
X-Received: by 2002:ad4:40cb:: with SMTP id x11mr7406631qvp.60.1628196559684; 
	Thu, 05 Aug 2021 13:49:19 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id d4sm2585549qty.15.2021.08.05.13.49.18
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 13:49:18 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
	<EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
	<alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
	<df6422c1-cf3e-2e3b-ffea-4afb43627a62@gmail.com>
	<229C49E8-4453-4759-A7DE-712BDD5AC3FD@gmail.com>
	<f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
	<907EC549-F01A-4345-ABFE-67B06CF6949A@gmail.com>
Message-ID: <eafbdb46-966c-9e16-ae75-08e15bad2dd3@gmail.com>
Date: Thu, 5 Aug 2021 16:49:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <907EC549-F01A-4345-ABFE-67B06CF6949A@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

c3VkbyBlb3BrZyB1cGdyYWRlIHdpbGwgdXBkYXRlIHlvdXIgc3lzdGVtLsKgIEVvcGtnIGhhcyBh
IG1hbnVhbCBwYWdlLgoKCgotLSBEYXZlIC0tCgoKCgpTZW50IGZyb20gbXkgTGVub3ZvIFRoaW5r
cGFkLCBydW5uaW5nIFNsaW50IEdOVS9MaW51eC4gIGh0dHBzOi8vc2xpbnQuZnIgZm9yIGluZm8K
Ck9uIDgvNC8yMSA5OjA1IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+IFNvLCBob3cgZG8geW91IGNoZWNrIGZvciB1cGRhdGVzIG9uIHRoZSBzeXN0ZW0gdXNp
bmcgYSB0ZXJtaW5hbD8gIFN1ZG8gZW9wa2cgaW5zdGFsbCBwYWNrYWdlIHdvdWxkIGluc3RhbGwg
YSBwYWNrYWdlLCBidXQgd291bGQgc29tZXRoaW5nIGxpa2Ugc3VkbyBlb3BrZyB1cGdyYWRlIHdv
cmsgb3Igd2hhdD8gIEkga25vdyB5b3UgY2FuIGdvIHRocm91Z2ggc29mdHdhcmUgY2VudGVyLCBi
dXQgd291bGQgbGlrZSB0bwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

