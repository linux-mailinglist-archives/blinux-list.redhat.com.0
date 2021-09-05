Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0B19A40110A
	for <lists+blinux-list@lfdr.de>; Sun,  5 Sep 2021 19:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630863153;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8BKUIwdUVvhz5lw2VyzNmwV99N6TOdwlXYYceibXMzc=;
	b=cHqvVLEI1SZz7+G69PT7MPJ+j/SI2ss5ghx6jF1xPxvU+eXTC4xsLrUvz9HtsiVT0ZhVsG
	K5DzN9tp2QaAnazU7t9hYZAX/c4CSd+31qRXYnli9CAQYy25xOKrQ+SJbl/skgTRFXyAVU
	qxg4ysC0rv6mTcpTbc1pdPhhEHSfHeA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-493-NbyG-3pqOLKbay3LRea_ag-1; Sun, 05 Sep 2021 13:32:31 -0400
X-MC-Unique: NbyG-3pqOLKbay3LRea_ag-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AD34C501E3;
	Sun,  5 Sep 2021 17:32:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98AB56F7EF;
	Sun,  5 Sep 2021 17:32:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7447C1809C98;
	Sun,  5 Sep 2021 17:32:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 185HWOD0004061 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Sep 2021 13:32:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A162D4404B; Sun,  5 Sep 2021 17:32:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9C69650177
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 17:32:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4A8496760C
	for <blinux-list@redhat.com>; Sun,  5 Sep 2021 17:32:21 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-345-wZ24VxoXOZOq-TX8tlIACg-1; Sun, 05 Sep 2021 13:32:20 -0400
X-MC-Unique: wZ24VxoXOZOq-TX8tlIACg-1
Received: by mail-qv1-f53.google.com with SMTP id 93so2782695qva.7
	for <blinux-list@redhat.com>; Sun, 05 Sep 2021 10:32:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=kw8wgfgl9djSQj9P6jpupo4wpadrHDgRhQSTiFwqRIg=;
	b=JI3L0D6EWp1L6sI9aFGKuFfNoXfI5uTExv+OQWxieCNV9D7hC7gqYk1d5XCIylZPz8
	boPSmSyHxpzhK492XbR4p3Ho2OHPRALPJqqwydt7F8ueBXgkf3nR+tGWTP65wJG3rawz
	wMg6OxyHdGBuJUUL82kOHkXQjtlD4cDB4VCEh27F2ESqXVt3k8tBhBecSURMlBHg/ags
	MxHz0hr5HDfXRuc5JTHMqNc2GghPfVbp67QvHvHpJSEgPbsJx6qRePT1ohLO7kYMwjEs
	rhaBVqW2plaMmxnfMVXUIFB27hIO87jNRz/eL1exHp0tlWPCpDpGyBQxXzJi76BcQ8Ky
	ldJA==
X-Gm-Message-State: AOAM530UQokt70X9C7Rw1l9mDruJEPkwMaNcZfAuk0XERH0N5Z/lP9xi
	HJKAoXeCu9AQcKjGjvYZk/mNDL/v2OPonA==
X-Google-Smtp-Source: ABdhPJxA7ejLl6/YvCislBboB8A65rk0EeG3GJk2qxF3/+iCgEjvEu2RBad2/dz3caziXJyOhPMmvA==
X-Received: by 2002:ad4:476f:: with SMTP id d15mr8700605qvx.24.1630863139642; 
	Sun, 05 Sep 2021 10:32:19 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::c275])
	by smtp.gmail.com with ESMTPSA id
	x29sm3714832qtv.74.2021.09.05.10.32.19 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Sep 2021 10:32:19 -0700 (PDT)
Subject: Re: No GNOME Terminal on Jenux?
To: blinux-list@redhat.com
References: <e532d780-aba9-1a5b-64f6-880ade71e38b@gmail.com>
	<18C382B6-0C05-4660-8ED0-29BCA802BACF@gmail.com>
Message-ID: <83cfe362-91fe-b36c-cbc3-f4055cfb888e@gmail.com>
Date: Sun, 5 Sep 2021 13:32:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <18C382B6-0C05-4660-8ED0-29BCA802BACF@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmsgeW91IcKgIE11c3QgYmUgc29tZXRoaW5nIGluIHRoZSB3YXkgQXJjaCBidWlsdCBHTk9N
RS7CoCBJdCdzIHByZXR0eSAKaGFyZCB0byBtYWludGFpbiBhIHN5c3RlbSB3aXRob3V0IGEgd29y
a2luZyB0ZXJtaW5hbC4KCgoKQ2hlZXJzLAoKCgpEYXZlCgoKCgpTZW50IGZyb20gU2xpbnQgR05V
L0xpbnV4LiAgaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCBmb3IgaW5mbwoKT24g
OS81LzIxIDE6MjcgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSSB0aGluayB0aGlzIGlzIGEgZ2VuZXJhbCBwcm9iO2VtIGluIGFyY2ggYXMgSSBoYXZlIHJ1
biBpbnRvIHRoZSBzYW1lIHByb2JsZW0gYW5kIGhhdmUgbm90IGZvdW5kIGEgd29yayBhcm91bmQg
Zm9yIHRoaXMuICBUaGFua3MuCj4KPiBNYXR0aGV3Cj4KPgo+Cj4+IE9uIFNlcCA1LCAyMDIxLCBh
dCAxMjozMyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxp
c3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IEdyZWV0aW5ncyEKPj4KPj4KPj4gSSBpbnN0YWxs
ZWQgSmVudXggd2l0aCBHTk9NRSwgYW5kIGZpbmQgdGhhdCB0aGUgcmVzdWx0aW5nIHN5c3RlbSBo
YXMgbm8gdXNhYmxlIEduT01FIHRlcm1pbmFsLiAgV2hldGhlciBJIHRyeSBzdGFydGluZyBpdCB3
aXRoLCAiZ25vbWUtdGVybWluYWwiLCBpbiB0aGUgJ3J1bicgZGlhbG9ndWUsIG9yIHNlbGVjdCBp
dCBmcm9tIHRoZSBvdmVydmlldywgbm90aGluZyBoYXBwZW5zLiAgSSBhbHNvIHRyaWVkIGdldHRp
bmcgYSB0YWxraW5nIGNvbnNvbGUgb24gdHR5MiwgYW5kIGZpbmQgdGhhdCBzdWNoIGNvbnNvbGVz
IGRvbid0IHNwZWFrLiAgSG93IGNhbiBJIGdldCBhIHRhbGtpbmcgdGVybWluYWwgb3IgY29uc29s
ZSBvbiB0aGlzIHN5c3RlbSwgYmVzaWRlcyByZWluc3RhbGxpbmcgYW5kIGNob29zaW5nIE1hdGU/
Cj4+Cj4+Cj4+Cj4+IFRoYW5rcywKPj4KPj4KPj4KPj4gRGF2ZQo+Pgo+Pgo+Pgo+Pgo+PiAtLSAK
Pj4gU2VudCBmcm9tIFNsaW50IEdOVS9MaW51eC4gIGh0dHBzOi8vc2xpbnQuZnIvZG9jL0hhbmRC
b29rLmh0bWwgZm9yIGluZm8KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

