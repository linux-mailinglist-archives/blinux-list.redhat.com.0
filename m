Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3E7A83CB621
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 12:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626431679;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DYnfNXzhyDJZCc8NhM3CgfKz9oMRdXeRDg+Dcb67c5g=;
	b=GuTZhggsMAammZB/fBCnih3eACFaSWZCCHSM8pVtzL8IIGdxTvo6EmBwtvVv084BHWkpYt
	0eXKntYjzy+CL+J3eWWyhdUN0xy9TMeDI8VomX6sgzJsO/iPd0aelperkFEBonhMtIHguJ
	pm4+Rmb85q8lE0/xwMaNb4g0XGPYqdM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-137-4D4vaUSfNbW01R8-h1VFHg-1; Fri, 16 Jul 2021 06:34:37 -0400
X-MC-Unique: 4D4vaUSfNbW01R8-h1VFHg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E0BC019200C0;
	Fri, 16 Jul 2021 10:34:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 41B9A60864;
	Fri, 16 Jul 2021 10:34:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DACFD4EA29;
	Fri, 16 Jul 2021 10:34:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GAYEYQ008134 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 06:34:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id ABB682052DAE; Fri, 16 Jul 2021 10:34:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A7CCE2051D7E
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 10:34:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 90B4C107846A
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 10:34:10 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-256-yXgHU1HrMB2xnqYZ5R2r5w-1; Fri, 16 Jul 2021 06:34:08 -0400
X-MC-Unique: yXgHU1HrMB2xnqYZ5R2r5w-1
Received: by mail-wr1-f51.google.com with SMTP id r11so11504896wro.9
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 03:34:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Wx5vf2uuzxUrERREe+G7AX89q3Kt7zgIO4srknt6ciw=;
	b=fGEpAKdj27o8pz1ufHfVWv21i3jx6if0HflgECM7IrTAOfTJdtA2byoEZ/Mm5zh/h5
	61tDfCg7PbmTKkKFIORSPpMsTvaF/wfNjdnjnRBOHGb1are6MaN22oFxG1/zllZBw4cm
	B43MQyl9ccvy5KE/B482alSNusEtatnCVCG9dMSjrXGz/tkwnss58h8bkuhcWWcJxIy1
	GLyQhLoXDzVLZHpsT3CMrRl/eYRqVldKuOsJGHNqcCcGvF3oBmGH9JedRSTIibkke/7Q
	JdemElljIdsKXdOTDzr2Pw4voXVGOBdD/BCJd/lZwRfxCs40IKmmsL/+xoYnXcMBpLUl
	r+ZQ==
X-Gm-Message-State: AOAM531OlxyRAHk1VvTaN/4BAcZroU5WE4EOTG9xCBwpiM17nPZGzLJt
	BKWR+v5Y7fCTkS/riGx4Lv25IwXBLQPgtg==
X-Google-Smtp-Source: ABdhPJx9BB6uPU9LcQh1m6y63IlrtjP0/XftUfWIvCFknNm13wpJLrkvmBiZzfEExVxLz/bKaSk8Hw==
X-Received: by 2002:adf:ea4c:: with SMTP id j12mr11319251wrn.138.1626431646976;
	Fri, 16 Jul 2021 03:34:06 -0700 (PDT)
Received: from [192.168.95.128] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id
	g18sm7600946wmk.37.2021.07.16.03.34.06 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 16 Jul 2021 03:34:06 -0700 (PDT)
Subject: Re: Transfering Thunderbird folder
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<388d8a75-302b-1519-cf7d-17cdc5c81345@protonmail.com>
Message-ID: <c917c3f4-6ee3-4a42-cf5f-cf59c22ae981@gmail.com>
Date: Fri, 16 Jul 2021 12:34:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <388d8a75-302b-1519-cf7d-17cdc5c81345@protonmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: cs
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

T2theSwgVGh1bmRlcmJpcmQgYWJzb2x1dGVsbHkgaWdub3JlcyBteSBwcm9maWxlIGFuZCBjcmVh
dGVzIGEgbmV3IG9uZSwgCnNvIEkgdGhpbmsgc29tZXRoaW5nIGNoYW5nZWQgaW4gcHJvZmlsZXMu
aW5pIG9yIGluc3RhbGxzLmluaS4gV2hlbiBJIAp0cmFuc2ZlciBteSBwcm9maWxlIGZyb20gV2lu
IHRvIFdpbiwgaXQgd29ya3MsIGJ1dCBmcm9tIFdpbiB0byBMaW51eCAKbm90LCBzbyBJIHdpbGwg
Y3JlYXRlIGFsbCBteSBzZXR1cCBhZ2FpbiwgaXQgd2lsbCBiZSBlYXN5ZXIgZm9yIG1lLgoKUGF2
ZWwKCgpEbmUgMTUuMDcuMjAyMSB2IDIyOjQ5IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gbmFwc2FsKGEpOgo+IEhlbGxvLAo+Cj4gd2VsbCwgSSBoYXZlIHF1aXRlIGJhZCBleHBl
cmllbmNlcyBkb2luZyB0aGlzIGFueXdoZXJlIGF0IGFueSB0aW1lLAo+IGluZGVwZW5kZW50bHkg
b24gcGxhdGZvcm0gb3IgVEIgdmVyc2lvbiwgc28gSSBwZXJzb25hbGx5IHByZWZlciB0byBzZXQK
PiB1cCB0aGluZ3MgZnJvbSBzY3JhdGNoIGFzIG1vc3Qgb2YgdGhlIGNvbmZpZ3VyYXRpb24gaXMg
ZG9uZSBvbiB0aGUKPiBzZXJ2ZXIgYW55d2F5Lgo+Cj4KPiBCdXQgeW91IGNhbiB0cnkgaXQgb3V0
IGlmIHlvdSB3YW50LiBKdXN0IGxldCBUQiBjcmVhdGUgYSBwcm9maWxlIGZvbGRlcgo+IGFuZCBy
ZXBsYWNlIHRoZSBjb250ZW50IG9mIHRoZSBmb2xkZXIgd2l0aCB5b3VyIG93biwgdGhhdCBzaG91
bGQgd29yayBpZgo+IHlvdXIgcHJldmlvdXMgdmVyc2lvbiBvZiBUQiB3YXMgdXBncmFkZWQgdG8g
dmVyc2lvbiA3OCB3aXRoIHRoZSBwcm9maWxlLgo+Cj4KPiBCZXN0IHJlZ2FyZHMKPgo+Cj4gUmFz
dGlzbGF2Cj4KPgo+IETFiGEgMTUuIDcuIDIwMjEgbyAxNzozNSBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIG5hcMOtc2FsKGEpOgo+PiBIaSwKPj4KPj4gSSB3YW50IHRvIHRyYW5z
ZmVyIG15IFRodW5kZXJiaXJkIGZvbGRlciBmcm9tIFdpbiB0byBMaW51eC4gSXQgd2FzCj4+IHBv
c3NpYmxlIDMgNCB5ZWFycyBhZ28gd2l0aG91dCBhbnkgaXNzdWVzLCBidXQgZnJvbSBzb21lIG5l
dyBUaHVuZGVyYmlyZAo+PiB2ZXJzaW9uLCBzb21ldGhpbmcgbXVzdCBiZSBjaGFuZ2V0IHRvIGdl
dCB0cmFuc2ZlcmVkIGZvbGRlciB3b3JraW5nIGFzCj4+IGV4cGVjdGVkLiBDYW4geW91IGhlbHAg
cGxlYXNlPyBXaGVuIEkgdHJhbnNmZXIgbXkgZm9sZGVyIHRvCj4+IC5UaHVuZGVyYmlyZCwgYXBw
IGlnbm9yZXMgYWxsIGV4aXN0aW5nIHByb2ZpbGVzIGFuZCBjcmVhdGVzIGFub3RoZXIgYW5kCj4+
IGFza3MgbWUgdG8gbG9naW4gdG8gbXkgbWFpbCBhY2NvdW50cy4KPj4KPj4gVGhhbmtzLAo+Pgo+
PiBQYXZlbAo+Pgo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4u
cmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

