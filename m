Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 99D29391138
	for <lists+blinux-list@lfdr.de>; Wed, 26 May 2021 09:11:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622013103;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=p0qMFt8d+OJP04GrqUL6x6RRKDQHrS1i6pBZ91rNCiY=;
	b=gWB8jT1xyS+qXFoAn+RzEXkATkZ3R0YeQnDEPNQRVFameWhZJJw6IJL427AbxIwGN1ZbHN
	Orrsz7G+2jSk7SwaoB48T2NRlcXfiqcMmDXjG4pTrp6kcWtMk6Tg2gNgMN0dGOvGNtRjOF
	LKckt0PB+PQthwas8m9PSTFySsBgz+I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-3neCDu-SPuKMquBXVkufoA-1; Wed, 26 May 2021 03:11:41 -0400
X-MC-Unique: 3neCDu-SPuKMquBXVkufoA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98B09800D62;
	Wed, 26 May 2021 07:11:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB7B219718;
	Wed, 26 May 2021 07:11:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ED6401800BB8;
	Wed, 26 May 2021 07:11:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14Q7BGVK015287 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 May 2021 03:11:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5EEDA208AB9B; Wed, 26 May 2021 07:11:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A875208AB93
	for <blinux-list@redhat.com>; Wed, 26 May 2021 07:11:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CEF1833959
	for <blinux-list@redhat.com>; Wed, 26 May 2021 07:11:13 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com
	[209.85.218.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-185-K33I7kM9PN6sHh1DOzGaYA-1; Wed, 26 May 2021 03:11:11 -0400
X-MC-Unique: K33I7kM9PN6sHh1DOzGaYA-1
Received: by mail-ej1-f42.google.com with SMTP id lz27so739500ejb.11
	for <blinux-list@redhat.com>; Wed, 26 May 2021 00:11:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=LXVyMshUn2zliB3URPGRZSSx4zYIhC8btwg3zYfP9O0=;
	b=kgc5S0XJm6DdoCMcBFBhyb/3PlLjQvbQWJwmPYu3Ta/QeWaqx7n0vUVKkmMaefaCR9
	cWDeQnHF+G/3Zk1qIzZeIOW8gmqmAAgrdLRinXcVKd0ZbkW/W7Pokx6Qtq61zUcYu9Sv
	h54El3/ax/bKCj8xYkuFD8sHiLPgepNNV66Ic4w7ENGPBTdQjsYdkxshm+BYWhfMljwO
	5zOCgRMs9OBh2hYB4X3X5YuvbOfbZoQ4HFxeeh51gZzx4Lmmoe2nvSb0zu8cdURjLrpY
	OzVRD4AuVQ7J0LmkxpXnrn9EY6GijmAdUtMEEH71enbtBGTScpoTRXWb80ghhy/NEKLO
	bBRQ==
X-Gm-Message-State: AOAM530JHpK4paqwwGwupIKs9t442vcMFKr2GJulfgpVHnoRUIDnK+Sy
	EWmoBIaH3Z9uXlef+V8fOUpnn4SR5y1/SA==
X-Google-Smtp-Source: ABdhPJx4m/PZw7Cuu+I9D/3lPNBFNHwqBhgUzwCYutEizFcfZV8mJaLqFyLwoMmibv0rCGU+yZMNwg==
X-Received: by 2002:a17:906:d1d1:: with SMTP id
	bs17mr32582029ejb.492.1622013069898; 
	Wed, 26 May 2021 00:11:09 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id l6sm175654edr.47.2021.05.26.00.11.09
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 26 May 2021 00:11:09 -0700 (PDT)
Subject: Re: Arch linux not in boot menu
To: blinux-list@redhat.com
References: <20210526.014710.170.3@[192.168.1.100]>
Message-ID: <bb2c1ab7-e54a-ddd2-5d88-549c3c8ae5f2@gmail.com>
Date: Wed, 26 May 2021 10:11:08 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210526.014710.170.3@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MjYuMDUuMjAyMSA0OjQ3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uINC/0LjR
iNC10YI6Cj4gSSBoYXZlIDMgb3BlcmF0aW5nIHN5c3RlbXMgb24gdGhlIHNhbWUgZGlzay4gV2lu
ZG93cywgc2xpbnQgYW5kLCBhcyBvZiB0aGlzIG1vcm5pbmcsIGFyY2guIEluc3RhbGxlZCBpbiBq
dXN0IHRoYXQgb3JkZXIuIFRoZSBiaW9zIHR5cGUgaXMgVUVGSS4KPiBTbGludCBydW5zIGdydWIs
IHNvIEkgZGlkIG5vdCBpbnN0YWxsIGl0IGluIGFyY2guCj4gQWZ0ZXIgY29tcGxldGluZyB0aGUg
YXJjaCBpbnN0YWxsLCBJIGdvdCBiYWNrIGludG8gc2xpbnQgYW5kIHJhbgo+IHVwZGF0ZS1ncnVi
Cj4gSXQgZm91bmQgYXJjaCBvbiAvZGV2L3NkYTcKPiBXaGVuICBJIHJhbgo+IGVmaWJvb3RtZ3IK
PiBBcmNoIHdhcyBub3QgbGlzdGVkIHRoZXJlLCBob3dldmVyLgo+IFdoYXQgc3RlcCBkaWQgSSBt
aXNzPwo+Cj4KeW91IHNob3VsZCB0YWtlIGludG8gYWNjb3VudCB0aGF0IGVmaWJvb3RtZ3Igc2hv
d3MgdGhlIGJvb3QgbGlzdCBpbiBlZmkuIAp0aGUgdXBkYXRlLWdydWIgY29tbWFuZCB1cGRhdGVk
IHRoZSBsaXN0IGluIHRoZSBncnViIGJvb3Rsb2FkZXIuCnRoZXNlIGFyZSB0d28gZGlmZmVyZW50
IGxpc3RzLgppZiB5b3Ugd2FudCB0byBzZWxlY3Qgb3MgdmlhIHRoZSBlZmkgbGlzdCwgdGhlbiBJ
IHdvdWxkIHJlY29tbWVuZCAKaW5zdGFsbGluZyBzb21lIGtpbmQgb2YgYm9vdGxvYWRlciBpbiBh
cmNoLiBpIHdvdWxkIHVzZSBzeXN0ZW1kLWJvb3QgZm9yIAp0aGlzLgoKLS0gClNpbmNlcmVseSwg
QWxleGFuZGVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

