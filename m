Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 69D6D3872BC
	for <lists+blinux-list@lfdr.de>; Tue, 18 May 2021 08:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621321066;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=m6soe+10ANj6rgvadG+oitq5jRASxh65+hbt9iULKW0=;
	b=VrkyW5GkEzdTVKFiI2fDBzRlYzOKEXJbXlAa9a4yvO6qTVh/D4GDVWh0PyOOQgZpkHwkXY
	XvNgb5mcfzEY8Z912sUnzI55siXiJ6NXD7fmHWH66hv+gtB5qdUqKI2tgsW3CRc0IwMVNI
	EVH3DCBhFbuSlFNjnzFuBT9zZod+Wzo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-558-jM1_ZFVVPo2yc_jftxiVZg-1; Tue, 18 May 2021 02:57:44 -0400
X-MC-Unique: jM1_ZFVVPo2yc_jftxiVZg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 32222107ACCA;
	Tue, 18 May 2021 06:57:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 752DF2C2A2;
	Tue, 18 May 2021 06:57:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6054F5534C;
	Tue, 18 May 2021 06:57:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14I6vHYo009912 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 May 2021 02:57:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4FA78215CDC0; Tue, 18 May 2021 06:57:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AB12215CDBE
	for <blinux-list@redhat.com>; Tue, 18 May 2021 06:57:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 91DD6101A531
	for <blinux-list@redhat.com>; Tue, 18 May 2021 06:57:14 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-14-0G_l-cz9O0KdWw_kgVthEg-1; Tue, 18 May 2021 02:57:12 -0400
X-MC-Unique: 0G_l-cz9O0KdWw_kgVthEg-1
Received: by mail-wr1-f42.google.com with SMTP id h4so8858559wrt.12
	for <blinux-list@redhat.com>; Mon, 17 May 2021 23:57:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=B2uAg6wMFcs+X0edrHtiJ5Gz9Kg1UwhYKk0l16VPRC8=;
	b=kHbYAERl630R2ULbwVjhInUtHtIxd5N/nsxYfOtUoATPxnU4r+I/eSec1u76ggpZyM
	Z/xGUA5Z5iLy7Mahkl1tgY9ovHKGIL7yP341Gm8mxOBjk+0ZDXzPiQDwiNulMEMWf5v1
	2lDiW1jQlEliGSSRkgy8v5q0CG1DfoSR9LDL3dGlK/nImXpl//etSqXB6HqGScNrbPt/
	KyfSx26J93Z7mllUF9otnqRj/ZhDIWvXucOgf2K13GTNduXePgdbB21DDj8sPkQBcMzv
	+k8YVS/I09naX/X9QHCPWJ6G4FUPZsU49RxzQSnQEIWwAxxHDd5Gpv4nf8kQgkjoYlxH
	lBTw==
X-Gm-Message-State: AOAM5317rMy6wBM4wvt2ZahKE6Km4Fqb4a8L6uy+HlnPqeQNOQrnI+0U
	IkGz5eZF1T2Ox8v7wZV4Aj6EXN2ArikKLg==
X-Google-Smtp-Source: ABdhPJxBb4W1L5dtjcevzz5s6Fg1K3DevUWG1AW8wxbsiNxKMzarYt6m8loA2WPVA+v7TXrWVrBDSQ==
X-Received: by 2002:a5d:4b43:: with SMTP id w3mr4770153wrs.297.1621321030496; 
	Mon, 17 May 2021 23:57:10 -0700 (PDT)
Received: from [192.168.1.4] (net-2-36-138-168.cust.vodafonedsl.it.
	[2.36.138.168]) by smtp.gmail.com with ESMTPSA id
	v3sm12739118wrr.19.2021.05.17.23.57.09 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 17 May 2021 23:57:10 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
Message-ID: <4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
Date: Tue, 18 May 2021 08:57:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKSSBtYW5hZ2VkIHRvIGluc3RhbGwgb25lIG9mIHRoZSBsaWJyYXJpZXMs
IGJ1dCBub3QgdGhlIG90aGVyIHR3bywgc28gCnRoYW5rcyBmb3IgdGhhdC4KCkFsc28sIHRoYW5r
cyBmb3Igc3VnZ2VzdGluZyB0byB1c2UgeWF5LCBJIGp1c3QgaW5zdGFsbGVkIGl0LCBJIGRpZG4n
dCAKa25vdyB5YW91cnQgd2FzIGRlcHJlY2F0ZWQuCgpNeSBxdWVzdGlvbiBub3cgaXMsIGFuZCB0
aGlzJ2xsIGJlIGR1bSwgd2hhdCBhcmUgcmVjb21tZW5kZWQgSVJDIApjbGllbnRzPyBob3cgZG8g
SSBnZXQgdGhlbSB3b3JraW5nPyB3aGF0IHNob3VsZCBJIGtub3cgYmVmb3JlIGpvaW5pbmcgYW4g
CklSQyBjaGFubmVsLCB3aGF0IGV2ZXIgaXQgbWlnaHQgYmU/CgpUaGFua3MgYWdhaW4uCgpCZXN0
IHJlZ2FyZHMuCgpGcmFuY2lzY28uCgpPbiA1LzE3LzIxIDk6MTkgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGksIEkganVzdCBwb3N0ZWQgYSBsaW5rIHRv
IHRoaXMgbWVzc2FnZSBpbnRlbmRlZCB0byBjaHJ5cyAoRmVucmlyIAo+IGF1dGhvcikgb24gdGhl
ICNhMTF5IGNoYW5uZWwgb2YgaXJjLmxpbnV4LWExMXkub3JnLgo+Cj4gTWF5YmUgam9pbiBoaW0g
dGhlcmU/Cj4KPiBEaWRpZXIKPgo+IExlIDE3LzA1LzIwMjEgw6AgMjA6MTUsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4gSGVsbG8gZXZlcnlvbmUsCj4+
Cj4+Cj4+IEkganVzdCBkb3dubG9hZGVkIGZlbnJpci1naXQgZnJvbSB0aGUgQVVSIHVzaW5nIHlh
b3VydC4KPj4KPj4gV2hlbiBJIHRyeSB0byBydW4gZmVucmlyIHdpdGggdGhlIGNvbW1hbmQKPj4K
Pj4gZmVucmlyCj4+Cj4+IGluIGEgdGVybWluYWwsIGhvdyBldmVyLCBpIGdldCBmZW5yaXIncyBz
dGFydHVwIHNvdW5kLCBhbmQgdGhpczoKPj4KPj4KPj4gW2ZyYW5jaXNjb0BCbHVlYmxpbmsgfl0k
IGZlbnJpcgo+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBF
cnJvciBsb2FkaW5nIHBsdWdpbjogCj4+IGxpYmhzcGVsbC5zby4KPj4gMDogY2Fubm90IG9wZW4g
c2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5Cj4+ICoqIChwcm9j
ZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVycm9yIGxvYWRpbmcgcGx1Z2lu
OiAKPj4gbGlidm9pa2tvLnNvLgo+PiAxOiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6
IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkKPj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcg
Kio6IDIwOjEyOjQ1LjM3NzogRXJyb3IgbG9hZGluZyBwbHVnaW46IAo+PiBsaWJudXNwZWxsLnNv
Cj4+IC40OiBjYW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBk
aXJlY3RvcnkKPj4KPj4KPj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQsIGFuZCBubyBzcGVl
Y2ggZWl0aGVyLgo+Pgo+PiBUaGFuayB5b3UgZm9yIGFueSBhbnN3ZXIuCj4+Cj4+IEJlc3QgcmVn
YXJkcy4KPj4KPj4gRnJhbmNpc2NvLgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

