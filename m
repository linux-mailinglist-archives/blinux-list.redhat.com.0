Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 692964BBBE7
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 16:11:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645197072;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=od6U2i/abLBnpvzn1ZWifaDa2Siw+UK7da2re76E+2E=;
	b=LJvhVW2JfyB91lop98Lfwa70irSNG0nZphFi44DP38eTYdRn8d+b+Fn+wvxsE/xsPGuZX7
	b9VkaNBL2IBJCKHe6OzMDsd6NtC/2r9GYz4CwyQ3ZWBRGbbWoS9SkCp6aYolhC3DoTr48A
	R/93GP9oFy5eSq101PWd2XOY7xeE1YI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-127-6VOHqYV5OUeABm-ue94MPA-1; Fri, 18 Feb 2022 10:11:08 -0500
X-MC-Unique: 6VOHqYV5OUeABm-ue94MPA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC2891006AA4;
	Fri, 18 Feb 2022 15:11:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C79874E97;
	Fri, 18 Feb 2022 15:11:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C62D34BB7C;
	Fri, 18 Feb 2022 15:11:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IFAxEA013797 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 10:10:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1ECD440CFD1C; Fri, 18 Feb 2022 15:10:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19B3E40CFD1A
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:10:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 023F12B699F3
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 15:10:59 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-278-xgRPZMFjM-GcFjadND22Wg-1; Fri, 18 Feb 2022 10:10:57 -0500
X-MC-Unique: xgRPZMFjM-GcFjadND22Wg-1
Received: by mail-qv1-f43.google.com with SMTP id x3so15250407qvd.8
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 07:10:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=xUY3/UWzTm77ICo07K77V0LgYOAGLUeEh+6y4nc0mWs=;
	b=MioXMYV0Ome4YTd3EHIXUZCeTnuIvsU5lurR/UP4exS9yPYEcsiRHGAM8mzsbn6r4O
	q7fISNrXmDLfgjPm9MkkHdr7OMzoErtHmF7S7HIhBQ7IIjTXqezn5Gm7CJRtcQnht+D2
	BMy1bqepbb/IlSeD7Ld2qFYIGWEMdP/Vni/R2aNnrX1IS00lbaJUi1yTeUL5CZClF52H
	72wFjgKJBztPBjKL0pCUYJT+eHNcQn3Yw/VK+eP1wE8UkgMrvYVOTh+U6zpXsqAOhB8N
	Cj2ZxOXs7CLkj1kdXUPyQu+FKCHSTyzoFKuajYASxg0ucmO8tvZ+xP1B5ibbsjiC3MmR
	7AfQ==
X-Gm-Message-State: AOAM5308jbV2zFJWHQK2gzlzhLfVJSTZPRRKgK5RHIR39/HuREvexOXB
	U53Zm9UAIJQSRySsqgOQMDuryPn99M30LQ==
X-Google-Smtp-Source: ABdhPJwFgVvXBF9ZeUTT0UAS6zbPY6u3XylHxZBxg5kL+bTfugnQ/LdIy1Alfrp41R6djh09qkFSbQ==
X-Received: by 2002:a05:622a:1441:b0:2d4:4afc:8409 with SMTP id
	v1-20020a05622a144100b002d44afc8409mr7035410qtx.460.1645197056179;
	Fri, 18 Feb 2022 07:10:56 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420:9c46:8864:27fd:8018?
	([2601:192:4c80:1420:9c46:8864:27fd:8018])
	by smtp.gmail.com with ESMTPSA id
	i4sm25733561qti.24.2022.02.18.07.10.55 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 07:10:55 -0800 (PST)
Message-ID: <ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
Date: Fri, 18 Feb 2022 10:10:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Accessibility of installing Distros?
To: blinux-list@redhat.com
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
In-Reply-To: <05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

TWFrZXMgYXQgbGVhc3QgdHdvIG9mIHVzLsKgIFRoZSBpbnN0YWxsZXIgYWx3YXlzIGZvdW5kIGl0
c2VsZiBsb29waW5nIGFuZCAKcmVwZWF0aW5nIGZhaWxlZCBwYWNrYWdlIHJldHJpZXZhbC4KCgoK
Q2hlZXJzLAoKCgpEYXZlCgoKCgpPbiAyLzE3LzIyIDEzOjEyLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEkgY291bGQgbmV2ZXIgZ2V0IEplbnV4IHRvIHdvcmsg
Y29ycmVjdGx5IG9uIG15IHNldHVwLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

