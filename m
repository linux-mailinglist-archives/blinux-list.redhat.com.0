Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5880344E125
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 05:35:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636691720;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fof3S+M8f+7w6+FdckXO//fUg/EMSVXMRmUrBLK7qIo=;
	b=X9WKWwGQWBReViSF9OorqCDEwOW7ynoaxUxxMm/HWlxQ00zCGYft8BGXO1Q7KexMkLiWIj
	set08S15MJdK59sCYp8fP1hqedh60R5T1nepq3c/engA5C2iXxAVBkw3spdYVlCXh+FvxD
	y1JU2kB3WYoOyRK/XWQqvbNyKsem0b8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-451-S4g4GtXwNgif05GOdevg0g-1; Thu, 11 Nov 2021 23:35:16 -0500
X-MC-Unique: S4g4GtXwNgif05GOdevg0g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3743715720;
	Fri, 12 Nov 2021 04:35:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D9B4C19D9D;
	Fri, 12 Nov 2021 04:35:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 985BF1819AC1;
	Fri, 12 Nov 2021 04:34:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC4Yqi7020737 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Nov 2021 23:34:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C7D772026D6B; Fri, 12 Nov 2021 04:34:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C36F12026D48
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 04:34:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73DEA811E7F
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 04:34:47 +0000 (UTC)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
	[209.85.222.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-363-LUTY-jv7NC-THPJuIGOeGg-1; Thu, 11 Nov 2021 23:34:45 -0500
X-MC-Unique: LUTY-jv7NC-THPJuIGOeGg-1
Received: by mail-qk1-f177.google.com with SMTP id d2so3035891qki.12
	for <blinux-list@redhat.com>; Thu, 11 Nov 2021 20:34:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qLKHvZn4t62wMyv0yj5cmbTDqRSjJmGnJnsDXWEuVKE=;
	b=alDfLQ6H3TdVjEiVwOvyvxT3PKI7G9mvBudhmCzvMR6YFMKR+C3Ixyv5ZTQMbdMiUd
	avz/qxAkUt91j02ncoy1nyP8vNWmKc9fSiV9tTx0dsj4NyzEAwLNROrDl2vXh9KgmKew
	6h9ciAOR8H7PYeyeTfrO07dVMUxpvpPUj9ES4Wyb6pb2NpOScw7XdCiaAJH7DwtoajIK
	i0pv4VgSD40RdOkumlS7B1tOaTpocaCbKVFiCg4bfVu3ksrq8vayqzJUKXH5yv++b8f0
	Nk1yZz63ZyHJWmBHQ6DwDnRXvv6C006rzKRW2dz5N0y1dQJSn5Ci2UCISN6eoSJGWoMK
	A2Gw==
X-Gm-Message-State: AOAM532CU7HjTty7MS0PSMkPifpV0M3zGCJK+/Ar/UEwCijd36SiMsk6
	416U61IveWsOWbRQRb9w8wVrHSez4RgNQQ==
X-Google-Smtp-Source: ABdhPJzJK3ipxF/RMT+2ruD2k1ghz9oyI+YdoI/ahuISxBl9rg2cWK5QwzCug7EeD3e1uZiAaeH1Nw==
X-Received: by 2002:a37:745:: with SMTP id 66mr10188312qkh.11.1636691684772;
	Thu, 11 Nov 2021 20:34:44 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	a24sm2356021qtp.95.2021.11.11.20.34.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 11 Nov 2021 20:34:44 -0800 (PST)
Subject: Re: How do you format a disk using slint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
	<45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
	<8ce70d89-dc7d-f8e9-6b8a-44d48d4ace4c@gmail.com>
	<6c63560f-ca92-f096-5252-9813d408f584@gmail.com>
	<3fe73ae9-6b66-c400-6067-70afc6cad92a@gmail.com>
	<ffd7ceb4-2c64-473f-43bd-d1566899bfc4@gmail.com>
Message-ID: <f75f32a0-0955-fceb-7dbe-f06e6eda71ca@gmail.com>
Date: Thu, 11 Nov 2021 23:34:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ffd7ceb4-2c64-473f-43bd-d1566899bfc4@gmail.com>
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

VGhhbmtzIGEgbWlsbGlvbiBEYXZlLAoKbm93IGV2ZXJ5dGhpbmcgd29ya3MgZmluZS4gWW91IGFy
ZSB0cnVseSBvZiBncmVhdCBoZWxwLsKgIFRoYW5rcyBmb3IgeW91ciAKcGF0aWVuY2UuCgoKQ2hl
ZXJzLAoKSWJyYWhpbQoKT24gMTEvMTEvMjEgMTA6NTEgUE0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gc2xhcHQtc3JjIC0taW5zdGFsbCBnbm9tZS1kaXNrLXV0
aWxpdHkuCj4KPgo+Cj4gT24gMTEvMTEvMjEgMjI6MzEsIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gd3JvdGU6Cj4+IHNsYXB0LXNyYyBnbm9tZS1kaXNrLXV0aWxpdHkKPgo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

