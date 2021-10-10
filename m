Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTP id 2CA6A4282DC
	for <lists+blinux-list@lfdr.de>; Sun, 10 Oct 2021 20:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633888887;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fdiUI8IyTvoLlyEeGnfPw7XzAsd6UYAYFUJ7bdYReL0=;
	b=Vg2ICqcVpCtR/P+pwzw58xSp03ekGrEwCM470bhrhZFBxCMw33mD/Vq+QbPKsX/vJdCQhM
	nUpwJR8z0yaLf6cbyv897PjKVpuRaYHy2scI57WKo8vmdQVaXLO6P72omZulhQ+5+dnswf
	QJ8bmeaunwa8u2PKRuSRHCJ50dq/taU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-25-j4r7dSA4ObCc1zgtaRqT3w-1; Sun, 10 Oct 2021 14:01:23 -0400
X-MC-Unique: j4r7dSA4ObCc1zgtaRqT3w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F1D3218414A2;
	Sun, 10 Oct 2021 18:01:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0FB6E5D6CF;
	Sun, 10 Oct 2021 18:01:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1D0E81800B9E;
	Sun, 10 Oct 2021 18:01:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19AI1COj030274 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 10 Oct 2021 14:01:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F20544047279; Sun, 10 Oct 2021 18:01:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EDC3D4047272
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 18:01:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6A88185A79C
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 18:01:11 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-330-ADH5u2k-NiyNvpArx_29gA-1; Sun, 10 Oct 2021 14:01:10 -0400
X-MC-Unique: ADH5u2k-NiyNvpArx_29gA-1
Received: by mail-qt1-f181.google.com with SMTP id y11so671750qtn.13
	for <blinux-list@redhat.com>; Sun, 10 Oct 2021 11:01:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Yb+KOPxXJhE29/SX0xBjeMpJBYWAnv+eKTW/6E03kQ4=;
	b=on76WRkDrt/qoNJMgfV+p/0RI38wosD0HqQ4qADpBJeP++SeRcphrqM7bbjnDCe89F
	W8i5RCHYHAid0FSBSNwSH3G2WLmUcOpxm9kp3CybQY5uyyNCqVu7osAxElt+2oHGCPCb
	RmdpF4a8m4eSFer3aXXFgMEFDxauKey4UMc31ka+JgyGgkCCUx3gkubzwUpzWoGX+FEy
	Ioso3QvSpu4odt6IrQ+zjCr83gQMN+M4+M47iYytxmAUFdy/mn5/0ixl1BmlzNMVyTlN
	3HZz/vq7/Px1Eh2FBm7h2oVa25KPVH8INJKZa54tXPH1v19ryMcSSpzBYbiGkgh4lXl4
	+meQ==
X-Gm-Message-State: AOAM531WN+JvE52BQuJR3bDbXG7HykGu+rsO/tJmSXl5QSai4+QWuyDX
	ULlU8bPcyI+rjL/23BUWUjZxQfZFs2LN6Q==
X-Google-Smtp-Source: ABdhPJz9Zl/APwVfkzXibBweARy4tEsjeM2bSSQHkmMfA+D4DJdP/lwvljJSPeZiu1SgW2402Lwh0w==
X-Received: by 2002:ac8:4156:: with SMTP id e22mr10707328qtm.14.1633888869294; 
	Sun, 10 Oct 2021 11:01:09 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:9197:31f2:17dc:3629?
	([2601:192:4c80:1420:9197:31f2:17dc:3629])
	by smtp.gmail.com with ESMTPSA id
	s23sm3265158qtx.63.2021.10.10.11.01.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 10 Oct 2021 11:01:08 -0700 (PDT)
Subject: Re: Mate Desktop questions
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
	<bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
	<9a347e53-0f52-4867-f81b-3c62495c6d0f@gmail.com>
Message-ID: <8b47aaf4-33bc-7bac-b77c-5a755d1c79ec@gmail.com>
Date: Sun, 10 Oct 2021 14:01:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <9a347e53-0f52-4867-f81b-3c62495c6d0f@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgeW91IHNoaWZ0LXRhYiwgd2hlbiB5b3UgaGVhciB0aGUgZGF0ZSBhbmQgdGltZSwgdXNlICdv
cmNhK2xlZnQgb3IKcmlnaHQsIHRvIG1vdmUgYW1vbmcgdGhvc2UgcGFuZWwgaXRlbXMuwqAgV2hl
biB5b3UgaGVhciAnbmV0d29yaycsIHVzZQonb3JjYSs3JyB0byBjbGlkayB0aGUgbGVmdCBidXR0
b24sIGFuZCBzaG93IHRoZSBtZW51IG9mIGF2YWlsYWJsZSBuZXR3b3Jrcy4KCgoKSFRILAoKCgpE
YXZlwqDCoAoKCgoKT24gMTAvMTAvMjEgMToxMiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiB3cm90ZToKPiB0aW1lL2RhdGUgYW5kIHRoZSAic2hvdyBkZXNrdG9wIiBpY29u
cy4gSSBkbyBub3Qga25vdyB3aGVyZSB0aGUgV2lGaQo+IGljb24gaXMgb3IgaG93IHRvIHB1dCBp
dCB0aGVyZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

