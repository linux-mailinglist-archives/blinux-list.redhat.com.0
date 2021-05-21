Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A198238C5CB
	for <lists+blinux-list@lfdr.de>; Fri, 21 May 2021 13:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621597123;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9SGrvzdRwr9+u7KYGhdPXYZU//t3y/kjfZrCTVGR0RY=;
	b=EMkT32WfgU9vSqEeqmc1paTEZrR2DqvTXJ+ftJ1Z3QGXDWL0XGvXAWAh+DEHvEg6lp9Djm
	ahIHp0GYfLllu/Z1+O9USUUgvT2HRylaJ5JcCXGzIn7PuRjPxgUJEZrnvni1bELhpD757g
	ebl+lFK/XY9iRAHSJi6Qrw4u549Qh5Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-292-TeSjmbsFOO24eCPBWeYGkA-1; Fri, 21 May 2021 07:38:42 -0400
X-MC-Unique: TeSjmbsFOO24eCPBWeYGkA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BC5001854E27;
	Fri, 21 May 2021 11:38:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 59E5261140;
	Fri, 21 May 2021 11:38:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2A9E844A5C;
	Fri, 21 May 2021 11:38:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14LBcOw6023655 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 May 2021 07:38:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6FBB62051B7B; Fri, 21 May 2021 11:38:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 698C32051B6D
	for <blinux-list@redhat.com>; Fri, 21 May 2021 11:38:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6E4E18E0922
	for <blinux-list@redhat.com>; Fri, 21 May 2021 11:38:21 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-487-BJEG_RIsPRGdyCqG5xhCaA-1; Fri, 21 May 2021 07:38:19 -0400
X-MC-Unique: BJEG_RIsPRGdyCqG5xhCaA-1
Received: by mail-wr1-f50.google.com with SMTP id p7so17023475wru.10
	for <blinux-list@redhat.com>; Fri, 21 May 2021 04:38:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=algkntRfavP//Syu74Ug+ktPgnqEU8SpptEyOdUDgig=;
	b=I/7wLVHGIzCkhL6BfJL7BlL2lbJaFvIqCb/sDrGuyrX24Yip5LDfmHpkx07y5PIssM
	RJFuCzw60+15hHsfHhCCN/AFpSfOFsl4u+OHqbSlM2k3cdF+0Y5R1yyhjoOL+eZgSQaE
	i1NL4MAFRxxGBrO4pUURf2iX4iLxQv98cSnswdgJodZ7IFlOxv1zcTN/w+4Y+cjjXLmB
	FcG6iBr4ER5ZwBbe5Q3nAfJlSRW8JSoZUrihC9YLu9jjOfsdWqzSHAc6nQbg5Hf9vReI
	HXYlO4BEy7cNE3AFhlOiJDkaZnBcRogSZn+Kkwl2ADRZfVCJw1jtb4yG79HwZt6CzalC
	rCXQ==
X-Gm-Message-State: AOAM5328BN9NF9zHsLnTMlHCGRaWbA5d4MVDm4OCgDuQt9LJ7DcR3q2Q
	Bhe8bTmJeXvqaHq472LIP8b9QQ0is4ikwA==
X-Google-Smtp-Source: ABdhPJx4xdAEdw4jUwSbNBwi4rULnNXI9VENXx1i09DPnImYXrCMFh4wloykQq8zaawJw3VNHkoWtw==
X-Received: by 2002:a5d:64a9:: with SMTP id m9mr9516567wrp.200.1621597098075; 
	Fri, 21 May 2021 04:38:18 -0700 (PDT)
Received: from [192.168.1.8] (net-2-44-25-150.cust.vodafonedsl.it.
	[2.44.25.150]) by smtp.gmail.com with ESMTPSA id
	p14sm1875698wrm.70.2021.05.21.04.38.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 21 May 2021 04:38:17 -0700 (PDT)
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
	<16e11231-c90b-c724-157f-f4017ff23ab6@slint.fr>
	<4d72b722-1e65-6b34-d1d4-2d168f3fff9c@gmail.com>
	<a8000f0d-1831-4a35-c7c5-da79f853000c@linux-a11y.org>
	<43d3b1f6-a50a-2e99-a9b4-5a9a6026faf3@gmail.com>
	<9a7f1b78-1b65-774a-494a-d2c5bc2090f9@linux-a11y.org>
	<2dd1a3a9-93e5-c1c8-6188-0f1b61e9367f@gmail.com>
	<760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
Message-ID: <7e97d005-f579-329d-b89a-877cd850b424@gmail.com>
Date: Fri, 21 May 2021 13:38:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <760ead03-5616-e06e-d8e2-8961a0ba970a@linux-a11y.org>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGVsbG8gdGhlcmUsCgoKcmVtb3ZpbmcgZXNwZWFrIGRvZXNuJ3QgZml4IGl0LCB0aGUgc2FtZSBw
cm9ibGVtIHN0aWxsIHBlcnNpc3RzLgoKQmVzdCByZWdhcmRzLgoKRnJhbmNpc2NvLgoKCk9uIDUv
MjEvMjEgMTI6MzYgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gSG93ZHkKPgo+PiBJIGhhdmUgZXNwZWFrLCBzb3gsIGFuZCB4Y2xpcCBpbnN0YWxsZWQsIHBs
dXMgcHVsc2VhdWRpbywgCj4+IHB1bHNlYXVkaW8tYWxzYSwgYWxzYS11dGlscyBhbmQgcGx1Z2lu
cy4gCj4gZXNwZWFrLW5nIGlzIHVzZWQgYnkgZGVmYXVsdCBpbnN0ZWFkIG9mIGVzcGVhay4gZXNw
ZWFrLW5nIGlzIHRoZSAKPiBzdWNjZXNzb3Igb2YgZXNwZWFrLiBkbyB0YWtlIGNhcmUgdG8gbm90
IGluc3RhbGwgZXNwZWFrIGJ1dCBlc3BlYWstbmcgCj4gYW5kIGdpdmUgYW5vdGhlciBzaG90IDop
Lgo+Cj4KPiBBbSAyMS4wNS4yMSB1bSAxMTo0NyBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb246Cj4+IEhlbGxvIHRoZXJlLAo+Pgo+Pgo+PiBKdXN0IGZvciB0aGUgaGVj
ayBvZiBpdCwgSSByZWRpZCBhIGNsZWFuIGluc3RhbGwgb2YgYXJjaCB3aXRoIAo+PiBwdWxzZWF1
ZGlvIHRoaXMgdGltZSwgYW5kIEkgY29uZmlndXJlZCBldmVyeXRoaW5nIEkgbmVlZGVkIHJ1bm5p
bmcgCj4+IHRoZSBzaCBzY3JpcHQgeW91IGluZGljYXRlZC4KPj4KPj4gSXQgaGFsZiB3b3Jrcywg
YW5kIGhhbGYgZG9lc24ndC4KPj4KPj4gV2hhdCBJIG1lYW4gYnkgdGhhdCBpcyB0aGF0IHdoZW4g
SSByZXN0YXJ0ZWQgdGhlIG1hY2hpbmUsIGp1c3QgYSBmZXcgCj4+IHNlY29uZHMgYWdvIGFuZCBy
YW4gZmVucmlyIGFzIHN1ZG9lciwgaXQgcGxheWVkIHRoZSBzb3VuZCBpY29uLCB0aGluZyAKPj4g
dGhhdCB3aXRoIHBpcGV3aXJlIGRpZG4ndCBoYXBwZW4sIGJ1dCBnYXZlIG1lIG5vIHNwZWVjaCBh
dCBhbGwuCj4+Cj4+IEkgaGF2ZSBlc3BlYWssIHNveCwgYW5kIHhjbGlwIGluc3RhbGxlZCwgcGx1
cyBwdWxzZWF1ZGlvLCAKPj4gcHVsc2VhdWRpby1hbHNhLCBhbHNhLXV0aWxzIGFuZCBwbHVnaW5z
Lgo+Pgo+PiBBbnkgc3VnZ2VzdGlvbnM/Cj4+Cj4+IFRoYW5rcyBhZ2Fpbi4KPj4KPj4gQmVzdCBy
ZWdhcmRzLgo+Pgo+PiBGcmFuY2lzY28uCj4+Cj4+IE9uIDUvMTgvMjEgNTowNiBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IEhvd2R5LAo+Pj4KPj4+IGRv
IHlvdSBoYXZlIHRoZSByZXF1aXJlbWVudHMgZm9yIHRoZSBnZW5lcmljIHNvdW5kIC8gdm9pY2Ug
ZHJpdmVycyAKPj4+IGluc3RhbGxlZD8KPj4+IFRvIGdldCBzdXJlLCByZWluc3RhbGwgaXQgZXhl
Y3V0ZToKPj4+IHN1ZG8gcGFjbWFuIC1TIHNveCBlc3BlYWstbmcgeGNsaXAKPj4+Cj4+PiBzb3gg
aXMgdXNlZCBmb3IgcGxheSBzb3VuZCwgZXNwZWFrIGZvciB2b2ljZSBvdXRwdXQgaW4gdGhlIGRl
ZmF1bHQgCj4+PiBjb25maWd1cmF0aW9uLCB4Y2xpcCBpcyBhIGZ1bm55IHRveSB0byBsZXQgZmVu
cmlyIHNoYXJlIHRoZSAKPj4+IGNsaXBib2FyZCBiZXR3ZWVuIHlvdXIgR1VJIGFuZCBUZXJtaW5h
bC4KPj4+Cj4+PiBzdGFydCBmZW5yaXIgZm9yIHRlc3RpbmcgaW4gZm9yZWdyb3VuZCAtIHlvdSBj
YW4gc3RvcCBpdCB1c2luZyBDVFJMICsgQwo+Pj4gc3VkbyBmZW5yaXIKPj4+Cj4+PiBkaWQgeW91
IGhlYXIgdGhlIHN0YXJ0dXAgc291bmQ/IGZlbnJpciBwbGF5cyBhIGxpdHRsZSBzb3VuZGljb24g
YXQgCj4+PiBzdGFydHVwLgo+Pj4KPj4+IGlmIG5vdCwgdGhlbiBwdWxzZWF1ZGlvIGlzIG5vdCBj
b25maWd1cmVkLgo+Pj4gc2hvcnQgc3RvcnkgZXhlY3V0ZToKPj4+ICMgY29uZmlndXJlIHVzZXIK
Pj4+IC91c3Ivc2hhcmUvZmVucmlyc2NyZWVucmVhZGVyL3Rvb2xzL2NvbmZpZ3VyZV9wdWxzZS5z
aAo+Pj4gIyBjb25maWd1cmUgcm9vdAo+Pj4gc3VkbyAvdXNyL3NoYXJlL2ZlbnJpcnNjcmVlbnJl
YWRlci90b29scy9jb25maWd1cmVfcHVsc2Uuc2gKPj4+Cj4+PiAjIG5lZWQgdG8gcmVzdGFydCB0
aGF0IHRoZSBjb25maWd1cmF0aW9uIGZvciBib3RoIGdldCBhY3RpdmUKPj4+Cj4+PiByZXN0YXJ0
Cj4+Pgo+Pj4gdGhlbiByZXRyeQo+Pj4KPj4+IHN1ZG8gZmVucmlyCj4+Pgo+Pj4gbG9uZyBzdG9y
cnk6IGZlbnJpciBuZWVkcyBieSBkZWZhdWx0IHRvIHJ1biBhcyByb290IHRvIGNvbGxlY3QgdGhl
IAo+Pj4gZGF0YSBvbiB5b3VyIHNjcmVlbiBvciBjYXB1dHJlIHRoZSBpbnB1dCBkZXZpY2VzLiBp
ZiBmZW5yaXIgc3BlYWtzIAo+Pj4gb3IgY3JlYXRlcyBzb3VuZCwgaXQgZG9lcyB0aGlzIGFzIHJv
b3QgdXNlci4geW91IHdvbnQgaGVhciBzb3VuZCBvZiAKPj4+IGFuIG90aGVyIHVzZXIgYnkgcHVs
c2VhdWRpbyAoc291bmQgc2VydmVyKSBkZXNpZ24uIFdlIG5lZWQgdG8gCj4+PiB0cmFuc3BvcnQg
dGhlIHNvdW5kIGNyZWF0ZWQgYXMgcm9vdCB0byB0aGUgc291bmQgc2VydmVyIHlvdSBoYXZlIAo+
Pj4gcnVubmluZyBhcyB1c2VyIHRvIGZpbmFsbHkgaGVhciB0aGUgc291bmQuCj4+Pgo+Pj4gZmVu
cmlyIHByb3ZpZGVzIDIgc2NyaXB0cyAoc2VlIGFib3ZlKSB0byBjb25maWd1cmUgdGhlIHJvb3Qg
cHVzZSAKPj4+IGF1ZGlvIHRvIHNlbmQgdGhlIGRhdGEgdG8geW91ciB1c2VyIGFuZCBjb25maWd1
cmUgdXNlciBwdWxzZSBhdWRpbyAKPj4+IHRvIGxpc3RlbiB0byB0aGUgc291bmQgc2VudCBieSBy
b290IGFuZCBwbGF5IGl0Lgo+Pj4KPj4+IGNoZWVycyBjaHJ5cwo+Pj4KPj4+Cj4+PiAxOC4wNS4y
MSB1bSAxNDo0NiBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4+
Pgo+Pj4+IEhlbGxvIHRoZXJlLAo+Pj4+Cj4+Pj4KPj4+PiBUaGFua3Mgc28gbXVjaCwgbm93LCB0
aGF0IHBhcnQgb2YgdGhlIHByb2JsZW0gaXMgc29sdmVkIQo+Pj4+Cj4+Pj4gVGhlIG90aGVyIHBh
cnQsIGhvdyBldmVyLCB0aGF0IGlzIG5vdCBzb2x2ZWQsIGlzIHRoYXQgZmVucmlyIAo+Pj4+IGRv
ZXNuJ3Qgc3BlYWsgd2l0aCBlc3BlYWssIG9yIGVzcGVhay1uZy4KPj4+Pgo+Pj4+IERvIEkgaGF2
ZSB0byBzZXQgc29tZXRoaW5nIHNvbWV3aGVyZSBmb3IgdGhhdCB0byBoYXBwZW4/Cj4+Pj4KPj4+
PiBUaGFua3MgYWdhaW4uCj4+Pj4KPj4+PiBCZXN0IHJlZ2FyZHMuCj4+Pj4KPj4+PiBGcmFuY2lz
Y28uCj4+Pj4KPj4+PiBPbiA1LzE4LzIxIDEwOjI0IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+PiBIb3dkeSBGcmFuY2lzY28sCj4+Pj4+Cj4+Pj4+IGkg
ZG9udCBrbm93IHdoeSB0aG9zZSBsaWJzIGFyZSBub3QgYW4gZGVwZW5kZW5jeSBieSAKPj4+Pj4g
cHl0aG9uLXB5ZW5jaGFudCBpZiB0aG9zZSBhcmUgc3ByZWFkIHdhcm5pbmdzLiBNYXliZSB0aGlz
IHNob3VsZCAKPj4+Pj4gYmUgcmVwb3J0ZWQgdG8gdGhlIHBhY2thZ2UgbWFpbnRhaW5lci4gQnV0
IGFueXdheS4KPj4+Pj4KPj4+Pj4geW91IGNhbiBhc2sgcGFjbWFuIHdoYXQgcGFja2FnZSBjb250
YWlucyB0aGUgc3BlY2lmaWMgZmlsZSB5b3UgCj4+Pj4+IG5lZWQgYnkgInN1ZG8gcGFjbWFuIC1G
eSBmaWxlbmFtZSIuIGhlcmUgaSBkaWQgdGhpcyBmb3IgZm9yIAo+Pj4+PiBleGFtcGxlIGluIGxp
YnZva2tvLnNvOgo+Pj4+Pgo+Pj4+PiAxMDoxNCBbY2hyeXNAYmxhY2tiZWFzdCB+XSA6KSAkIHN1
ZG8gcGFjbWFuIC1GeSBsaWJ2b2lra28uc28KPj4+Pj4gW3N1ZG9dIFBhc3N3b3J0IGbDvHIgY2hy
eXM6Cj4+Pj4+IDo6IFN5bmNocm9uaXNpZXJlIFBha2V0ZGF0ZW5iYW5rZW4uLi4KPj4+Pj4gwqBj
b3JlIDkwMyw1IEtpQsKgIDYsMTcgTWlCL3MgMDA6MDAgCj4+Pj4+IFsjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
XSAKPj4+Pj4gMTAwJQo+Pj4+PiDCoGV4dHJhIDksMyBNaULCoCAyNiw5IE1pQi9zIDAwOjAwIAo+
Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjI10gCj4+Pj4+IDEwMCUKPj4+Pj4gwqBjb21tdW5pdHkgMjIs
OCBNaULCoCAyOSw2IE1pQi9zIDAwOjAxIAo+Pj4+PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjI10gCj4+Pj4+
IDEwMCUKPj4+Pj4gwqBtdWx0aWxpYiAyMjIsNSBLaULCoCAxMiw4IE1pQi9zIDAwOjAwIAo+Pj4+
PiBbIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjI10gCj4+Pj4+IDEwMCUKPj4+Pj4gZXh0cmEvbGlidm9pa2tvIDQu
My4xLTEKPj4+Pj4gwqDCoMKgIHVzci9saWIvbGlidm9pa2tvLnNvCj4+Pj4+IDEwOjE1IFtjaHJ5
c0BibGFja2JlYXN0IH5dIDopICQKPj4+Pj4KPj4+Pj4gc28gdGhlIHBhY2thZ2UgeW91IG5lZWQg
Zm9yIGxpYnZva2tvLnNvIGlzICJsaWJ2b2lra28iCj4+Pj4+IHRvIHNpbGVuY2Ugb3V0IGFsbCB0
aGUgd2FybmluZ3MgZG8gdGhpczoKPj4+Pj4gc3VkbyBwYWNtYW4gLVMgbGlidm9pa2tvIG51c3Bl
bGwgaHNwZWxsCj4+Pj4+Cj4+Pj4+IHRoaXMgaW5zdGFsbCBhbGwgMyAoSU1PIG9wdGlvbmFsIGRl
cGVuZGVuY3kncywgd2hhdCBzaG91bGQgbm90IAo+Pj4+PiBjcmVhdGUgYSB3YXJuaW5nLCBidXQg
d2VsbCwgaXQgaXMgbGlrZSBpdCBpcykKPj4+Pj4KPj4+Pj4gaSB1c2UgaXJzc2kgYXMgSVJDIChj
b21tYW5kbGluZSkgY2xpZW50LiB0aGVyZSBpcyBhbHNvIFBpZGdpbiAoYXMgCj4+Pj4+IGdyYXBo
aWNhbCBjbGllbnQpLiBib3RoIGFyZSB2ZXJ5IG5pY2UuCj4+Pj4+Cj4+Pj4+IGxvb2tpbmcgZm9y
d2FyZCB0byBzZWUgeW91IGluIElSQyA6KS4KPj4+Pj4KPj4+Pj4gY2hlZXJzIGNocnlzCj4+Pj4+
Cj4+Pj4+Cj4+Pj4+IEFtIDE4LjA1LjIxIHVtIDA4OjU3IHNjaHJpZWIgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbjoKPj4+Pj4+IEhlbGxvIHRoZXJlLAo+Pj4+Pj4KPj4+Pj4+Cj4+
Pj4+PiBJIG1hbmFnZWQgdG8gaW5zdGFsbCBvbmUgb2YgdGhlIGxpYnJhcmllcywgYnV0IG5vdCB0
aGUgb3RoZXIgdHdvLCAKPj4+Pj4+IHNvIHRoYW5rcyBmb3IgdGhhdC4KPj4+Pj4+Cj4+Pj4+PiBB
bHNvLCB0aGFua3MgZm9yIHN1Z2dlc3RpbmcgdG8gdXNlIHlheSwgSSBqdXN0IGluc3RhbGxlZCBp
dCwgSSAKPj4+Pj4+IGRpZG4ndCBrbm93IHlhb3VydCB3YXMgZGVwcmVjYXRlZC4KPj4+Pj4+Cj4+
Pj4+PiBNeSBxdWVzdGlvbiBub3cgaXMsIGFuZCB0aGlzJ2xsIGJlIGR1bSwgd2hhdCBhcmUgcmVj
b21tZW5kZWQgSVJDIAo+Pj4+Pj4gY2xpZW50cz8gaG93IGRvIEkgZ2V0IHRoZW0gd29ya2luZz8g
d2hhdCBzaG91bGQgSSBrbm93IGJlZm9yZSAKPj4+Pj4+IGpvaW5pbmcgYW4gSVJDIGNoYW5uZWws
IHdoYXQgZXZlciBpdCBtaWdodCBiZT8KPj4+Pj4+Cj4+Pj4+PiBUaGFua3MgYWdhaW4uCj4+Pj4+
Pgo+Pj4+Pj4gQmVzdCByZWdhcmRzLgo+Pj4+Pj4KPj4+Pj4+IEZyYW5jaXNjby4KPj4+Pj4+Cj4+
Pj4+PiBPbiA1LzE3LzIxIDk6MTkgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+Pj4+Pj4gSGksIEkganVzdCBwb3N0ZWQgYSBsaW5rIHRvIHRoaXMgbWVzc2Fn
ZSBpbnRlbmRlZCB0byBjaHJ5cyAKPj4+Pj4+PiAoRmVucmlyIGF1dGhvcikgb24gdGhlICNhMTF5
IGNoYW5uZWwgb2YgaXJjLmxpbnV4LWExMXkub3JnLgo+Pj4+Pj4+Cj4+Pj4+Pj4gTWF5YmUgam9p
biBoaW0gdGhlcmU/Cj4+Pj4+Pj4KPj4+Pj4+PiBEaWRpZXIKPj4+Pj4+Pgo+Pj4+Pj4+IExlIDE3
LzA1LzIwMjEgw6AgMjA6MTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPj4+Pj4+Pj4gSGVsbG8gZXZlcnlvbmUsCj4+Pj4+Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+
Pj4+IEkganVzdCBkb3dubG9hZGVkIGZlbnJpci1naXQgZnJvbSB0aGUgQVVSIHVzaW5nIHlhb3Vy
dC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gV2hlbiBJIHRyeSB0byBydW4gZmVucmlyIHdpdGggdGhlIGNv
bW1hbmQKPj4+Pj4+Pj4KPj4+Pj4+Pj4gZmVucmlyCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IGluIGEgdGVy
bWluYWwsIGhvdyBldmVyLCBpIGdldCBmZW5yaXIncyBzdGFydHVwIHNvdW5kLCBhbmQgdGhpczoK
Pj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gW2ZyYW5jaXNjb0BCbHVlYmxpbmsgfl0kIGZlbnJp
cgo+Pj4+Pj4+PiAqKiAocHJvY2Vzczo3MDA4KTogV0FSTklORyAqKjogMjA6MTI6NDUuMzc0OiBF
cnJvciBsb2FkaW5nIAo+Pj4+Pj4+PiBwbHVnaW46IGxpYmhzcGVsbC5zby4KPj4+Pj4+Pj4gMDog
Y2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
Cj4+Pj4+Pj4+ICoqIChwcm9jZXNzOjcwMDgpOiBXQVJOSU5HICoqOiAyMDoxMjo0NS4zNzQ6IEVy
cm9yIGxvYWRpbmcgCj4+Pj4+Pj4+IHBsdWdpbjogbGlidm9pa2tvLnNvLgo+Pj4+Pj4+PiAxOiBj
YW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkK
Pj4+Pj4+Pj4gKiogKHByb2Nlc3M6NzAwOCk6IFdBUk5JTkcgKio6IDIwOjEyOjQ1LjM3NzogRXJy
b3IgbG9hZGluZyAKPj4+Pj4+Pj4gcGx1Z2luOiBsaWJudXNwZWxsLnNvCj4+Pj4+Pj4+IC40OiBj
YW5ub3Qgb3BlbiBzaGFyZWQgb2JqZWN0IGZpbGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkK
Pj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gQW55IGlkZWFzIG9uIGhvdyB0byBmaXggaXQsIGFu
ZCBubyBzcGVlY2ggZWl0aGVyLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUaGFuayB5b3UgZm9yIGFueSBh
bnN3ZXIuCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IEJlc3QgcmVnYXJkcy4KPj4+Pj4+Pj4KPj4+Pj4+Pj4g
RnJhbmNpc2NvLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+
Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+
Pj4+Pgo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+
Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pgo+
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
Pj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0
Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

