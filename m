Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTP id 756E842C16D
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 15:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634131867;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kpr1m7oSnRDrCHliW3WLF/QtjQrPzPIs4iymKHVmPkQ=;
	b=XGm/rPuLYQU+fblLNaywkk2BsgSJu0VPAuXy12r8i7bSacWM5/OK3WI9Luf0roUweZ9hlA
	9ZfWevpO2gUCAIM/1kVoboBdgjBYepXGZms4rD7aBiCl9L1/c7vjmFLcsDG7h4zHOZsxXv
	1fwbkoLSyjgJpweKITFkg+2ATrBEyzU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-87-YXMoUnagP_efyADkBrXBrw-1; Wed, 13 Oct 2021 09:31:01 -0400
X-MC-Unique: YXMoUnagP_efyADkBrXBrw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 876EF18125C2;
	Wed, 13 Oct 2021 13:30:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24993100751A;
	Wed, 13 Oct 2021 13:30:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E2FE24EA30;
	Wed, 13 Oct 2021 13:30:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DDUkQU010855 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 09:30:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8692E404727A; Wed, 13 Oct 2021 13:30:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82A404047272
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:30:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69DB7802E5F
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:30:46 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-478-27Ixc7x5NIewsAVgNHj7qA-1; Wed, 13 Oct 2021 09:30:44 -0400
X-MC-Unique: 27Ixc7x5NIewsAVgNHj7qA-1
Received: by mail-qt1-f181.google.com with SMTP id c20so2501604qtb.2
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 06:30:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=fGvVKYcWRRybb5ga1HYQUNLgb91Rn3fkam0njr1fiVE=;
	b=rjBk8nNM9hkuVNpg6224lYPRH+VNwp/JwkmV9E8xmDu7GA5gtaOB8KZgZpZ6O2txp7
	itasG1l4hEz7CsGWwVsl40lLnFL4vBLWVCGwYQes64f9Zo9jmP9g9DgkbuO0PspxVce9
	uu3GW/ovqs9k42lzoceJ4r+pngD7mqG9HX5TxW1axydCa2MjiUUwYiaYWeGB8BeIa/Ih
	5PYtDRU7ZFAS7sh+Z5FFh9Xl4eGw9jCeGTvVq5vAcc4TU4oc69ud7FQr4OXrXC2vwWPn
	6D8n3Dp9pwDsvVySrMiaA2e2A2fxEVf68MHCsBam1xeuCcNmwMNQqnMvGaSRnGcAOcKp
	IiOg==
X-Gm-Message-State: AOAM531rvd7uMcjk+6VD52+fqzP8RUT5EJad6zIfCgI2W5iBQhqVuMEE
	XqnkbvBw7pnWYwJJtDxG1GfRZewjYIzoTw==
X-Google-Smtp-Source: ABdhPJz9CsPoqR3Zx+vgrlX+G1/MopJOe11+yCWFKX2rvgSh3kbTvzkTByXeCSXaaFdssXPCHoNIpA==
X-Received: by 2002:ac8:5e49:: with SMTP id i9mr6884570qtx.145.1634131843798; 
	Wed, 13 Oct 2021 06:30:43 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:9cbf:5de1:cb55:281?
	([2601:192:4c80:1420:9cbf:5de1:cb55:281])
	by smtp.gmail.com with ESMTPSA id
	d11sm8682271qtb.39.2021.10.13.06.30.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 Oct 2021 06:30:43 -0700 (PDT)
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: blinux-list@redhat.com
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<6DCA7D67-0A4B-425C-A977-B2257B4ADCD7@gmail.com>
	<CAGJxbF6dnuJYmTBVUVuyeRJAefsXb84=P8g_yi9mXQkP8j-zZA@mail.gmail.com>
	<B2400E8A-B5E2-423D-81D7-AE098B8B36B6@gmail.com>
	<f8b8b6b0-9563-4816-3ce2-058e670df4ca@gmail.com>
	<6DA5EF94-AB46-4F04-AB11-529A2E08E122@gmail.com>
Message-ID: <00cf4c56-cad1-8e30-aed7-b0299c9953d5@gmail.com>
Date: Wed, 13 Oct 2021 09:30:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <6DA5EF94-AB46-4F04-AB11-529A2E08E122@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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

SSBkb24ndCB1c2UgZHJvcGJveC7CoAoKCi1EYXZlwqAKCgoKU2VudCBmcm9tIG15IFRoaW5rIFBl
bmd1aW4gSjQgbGFwdG9wLCBydW5uaW5nIFRyaXNxdWVsIEdOVS9MaW51eCwgdmVyc2lvbiA5LgoK
T24gMTAvMTMvMjEgNjo0NSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKPiBIYWQgeW91IGJlZW4gYWJsZSB0byBnZXQgZHJvcGJveCB3b3JraW5nIHdpdGggbWlu
dD8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

