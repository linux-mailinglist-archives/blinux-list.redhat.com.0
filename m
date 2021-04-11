Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7275D35B5DA
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 17:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618153929;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ordUJXPBm6v73UxeTAr0cR/1SDnVoOROneR0pjv9xkE=;
	b=P604M5HNjouiTLMf+OaQVeem66Qhy6Vk+qlTGOa4tC2c4cjq1VI83FS91PdHijD9rthY0D
	GsH/vvjjmfEa5hGe+AVow2GbA0QJuh01RmGrOkNdmi+t8Jyaw/nyl9BEb+q2zI1XkVpXZJ
	dhuQ0ocZxn3zOxq6PNog130ZsMBJXOI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-FSL4PQvBOF6F-6hYWrqFBw-1; Sun, 11 Apr 2021 11:12:07 -0400
X-MC-Unique: FSL4PQvBOF6F-6hYWrqFBw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A65F918397A3;
	Sun, 11 Apr 2021 15:12:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E3215C22A;
	Sun, 11 Apr 2021 15:12:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 67E3544A5A;
	Sun, 11 Apr 2021 15:12:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BFC0ld002130 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 11:12:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 27C49202146B; Sun, 11 Apr 2021 15:12:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 213BB21D8D7F
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:11:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 636A0811E7A
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:11:57 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-565-lmhCBxu2NvWAmMBd0dvXow-1; Sun, 11 Apr 2021 11:11:55 -0400
X-MC-Unique: lmhCBxu2NvWAmMBd0dvXow-1
Received: by mail-qk1-f169.google.com with SMTP id y5so10778139qkl.9
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 08:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=E4qJ7tsAz3V9u7EQOzACyI2oSK4dYYMcutJzjkQcPHk=;
	b=lOxjf3JnVQ8HAJi7Vab87uQe3xL86zzzEY4LgtAxDmg03NPTjBqsV42rTwCdc0Vfj9
	PwMP8W/LVWfIppegIW2knx32x/lkvA13WVl7IB5fWM0lad4z36vAJOGIEOPG/iMx3pK+
	VG2LRUCSfBmDeSBM3ni9g6sgXMf70qZuXT2+pXqZ5wqQY9p7E/kRhTE2Fvprw8vkvEF+
	Ww5uoHmCLtexA5CXNxZjOkp4UJ00u2jrLAYepuRCCtlOLipluvy+W1YmLKYoaWEDWbCr
	T9zGJAl1hlxczOXOBK19G/Hdu23gTDx0xS/Up0zttwIOA/fVqMeNpZWj2kwWbCvkfnoa
	/NmQ==
X-Gm-Message-State: AOAM533txjLsiCizzZd4JtqGbCDeFm3262EjFcgtjZz+dDu8VJCmsq6X
	SRab+O0YtdfKCTHGStGI4JpeYJIDFcSxTQ==
X-Google-Smtp-Source: ABdhPJzH5EspM22TlLwroGX1Hndu6g1eHKgPlIxnJFDVFB4+/Ep6IPTnIX1873Z0diFfFSgROqCMEQ==
X-Received: by 2002:a05:620a:210a:: with SMTP id
	l10mr22381764qkl.398.1618153914696; 
	Sun, 11 Apr 2021 08:11:54 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:3c00::8d2c])
	by smtp.gmail.com with ESMTPSA id v2sm5971178qkv.39.2021.04.11.08.11.54
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Apr 2021 08:11:54 -0700 (PDT)
Subject: Re: Some questions about Arch Linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
	<93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
	<42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
Message-ID: <d109559a-d2c0-c375-255d-b4e4c1ffa0b8@gmail.com>
Date: Sun, 11 Apr 2021 11:11:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
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

V2hpY2ggc2Vzc2lvbiBpcyBzcGVjaWZpZWQgaW4geW91ciAnLnhpbml0cmMnP8KgIERpZCB5b3Ug
YWxzbyBkcmFnIGluIHRoZSAKYXBwcm9wcmlhdGUgdmlkZW8gZHJpdmVyP8KgIERvZXMgJ3gnIHN0
YXJ0P8KgIERvZXMgaXQgdGhyb3cgZXJyb3JzPwoKCgpDaGVlcnMsCgoKCkRhdmXCoCBIdW50CgoK
U2VudCBmcm9tIG15IExlbm92byBUaGlua3BhZCwgcnVubmluZyBTbGludCBHTlUvTGludXguICBo
dHRwczovL3NsaW50LmZyCgpPbiA0LzExLzIxIDExOjA5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IHN0dWZmIGkgZG9uJ3QgcmVtZW1iZXIsIGFyZSBpbnN0
YWxsZWQsIHBsdXMgdGhlIGdub21lIGFuZCBtYXRlIGRlc2t0b3BzLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdA==

