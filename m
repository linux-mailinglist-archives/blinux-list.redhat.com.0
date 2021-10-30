Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FF9440708
	for <lists+blinux-list@lfdr.de>; Sat, 30 Oct 2021 05:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635563104;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=m2fLOh9jtqrfwRmPQ/KFOh1uli75eUsjQPZKxAmHWwA=;
	b=b5RFPKD4THSiNbhBvNbHPAQOPYXhEsVLDSU8U8HN8UB4o2OsOoY0vbPRsSOZgOgUkv0jLq
	unYf0HIIws2WnungEj1/JUajbJnKY+W9Dy/Kbhd4u0OD8oADCoFWTLFy0ekMr2wvyHaypa
	9Y5VKy8DfFdetwIr/25sYFk/51meIf8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-396-qosZtSyiPhGJRXB3jiHIHQ-1; Fri, 29 Oct 2021 23:05:02 -0400
X-MC-Unique: qosZtSyiPhGJRXB3jiHIHQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A375110A8E00;
	Sat, 30 Oct 2021 03:04:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EBCF5F707;
	Sat, 30 Oct 2021 03:04:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 193E91806D03;
	Sat, 30 Oct 2021 03:04:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19U34cEk010643 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 23:04:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D9A6E1121315; Sat, 30 Oct 2021 03:04:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D52DF1121314
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 03:04:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 08718185A794
	for <blinux-list@redhat.com>; Sat, 30 Oct 2021 03:04:36 +0000 (UTC)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-520-NhT4wj5cOuGOAy0UsJqTWQ-1; Fri, 29 Oct 2021 23:04:34 -0400
X-MC-Unique: NhT4wj5cOuGOAy0UsJqTWQ-1
Received: by mail-qt1-f179.google.com with SMTP id h16so6547208qtk.0
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 20:04:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=5asHoCNyF92pHzbClcPwENQymXndIstkxIzJOyGSY5E=;
	b=8OVs0S8LCI14DW7pAGc6Ko6DyAaISRCOEkv0oFfHIU4CjQ3iwRp9qYWXzuM+OEH+eP
	CGwwLz7HDv3s6dIDiaYysf2J1KxpecBa/w9Jx4XuRTL2C6FxScR7by7eMoTutx+fZgk8
	st+H0+aGJnqGj2oEcv7JpHdd7ni8q9KkS6EmpRalNQRlLBOtRbQBB+WVQgztjhuSKLno
	rK8e6k7uFayi2pJC+Bg5blZ18iRvWRscMkh0W7n2gUhsgzM6iTCppPqVAtLQazRkP8rw
	jgOwvQeF2VPGvndf4jSyDA8uXpW7DkaiR4AEmMNCACg5DXHbRn1sRzBW9r4xeAsssopW
	nJiw==
X-Gm-Message-State: AOAM532zVvP6BDRx1DwRV8U7720alCJK/PkC97GO64BEQGJ7N1H6BwM2
	4bbySiSOpKBl17jnL+/7y4k2y+zBFU2SNw==
X-Google-Smtp-Source: ABdhPJw0WRoVtaQ4mDSchEW19F4+aFnV+U2J3EjtcYZsuyAzWoC/ctLJgLZmZchSnnehaCE9dQbmew==
X-Received: by 2002:ac8:56f9:: with SMTP id 25mr16109865qtu.374.1635563073319; 
	Fri, 29 Oct 2021 20:04:33 -0700 (PDT)
Received: from ?IPv6:2601:152:4000:330:a788:e4b1:999a:d530?
	([2601:152:4000:330:a788:e4b1:999a:d530])
	by smtp.gmail.com with ESMTPSA id
	bp9sm5316760qkb.94.2021.10.29.20.04.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 29 Oct 2021 20:04:32 -0700 (PDT)
Subject: Re: Accessible Coconut speech at startup
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <F9A34440-26A3-40BA-8916-B47339117C16@gmail.com>
	<CF2F8D13-A374-4F46-A5E7-D20B66F738C2@gmail.com>
	<alpine.NEB.2.23.451.2110292032280.23789@panix1.panix.com>
Message-ID: <8c7a2cce-b2c6-534d-ec3d-ddfc92c9c78a@gmail.com>
Date: Sat, 30 Oct 2021 08:34:31 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2110292032280.23789@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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

VGhhbmtzIGEgbWlsbGlvbi4gSSBqdXN0IGZpZ3VyZWQgd2hhdCBJIHdhcyBkb2luZyB3b3JuZy4g
SSBqdXN0IHJlYWxpemVkIAp0aGF0IGhpdHRpbmcgYWx0LWYxIG9yIGFsdC1mMiBkb2VzIG5vdCB3
b3JrIG9uIG15IGxhcHRvcC4gSSBuZWVkZWQgdG8gCnB1c2ggdGhlIGZ1bmN0aW9uIGtleSBhbG9u
ZyB3aXRoIHRoZSBhbHQgZjEgb3IgZjIgZm9yIGl0IHRvIHdvcmsuIE5vdyBJIApjYW4gYWNjZXNz
IHRoZSBtZW51cyBqdXN0IGZpbmUuCgpJIHN0aWxsIG5lZWQgdG8gZmlndXJlIG91dCBhIHdheSBv
ZiBjaGFuZ2luZyB0aGUgZGVmYXVsdCBzcGVlY2ggZW5naW5lLCAKYW5kIGEgd2F5IHRvIGhhdmUg
aXQgZGlzcGxheSBmb3JlaWduIGNoYXJhY3RlcnMgb24gdGhlIEJyYWlsbGUgZGlzcGxheS4gCkZv
ciBleGFtcGxlLCBXaGVuIEkgZG8gYSB5b3V0dWJlIHNlYXJjaCBhbmQgZ2V0IGEgaGl0IGluIEFy
YWJpYyBvciAKSGVicmV3IGl0IGRpc3BsYXlzIHRoZSBBcmFiaWMgb3IgSGVicmV3IGNoYXJhY3Rl
cnMgYXMgcXVlc3Rpb24gbWFya3MuIEkgCmFtIHN1cmUgdGhlcmUgaXMgYSB3YXkgb2YgZGVhbGlu
ZyB3aXRoIHRoaXMuCgppbiB0aGUgbmV4dCBzdGFnZSwgSSBuZWVkIHRvIGZpZ3VyZSBhIHNhZmUg
d2F5IG9mIGluc3RhbGxpbmcgaXQgCmFsb25nc2lkZSBteSB3aW5kb3dzIHdpdGhvdXQgc2NyZXdp
bmcgdcKgwqDCoCBwIG15IHdpbmRvd3Mgb3BwZXJhdGlvbi4KClRoYW5rcyBhIGxvdCBhZ2FpbiBm
b3IgeW91ciBoZWxwLgoKQnkgdGhlIHdheSBJIGFtIG5vdyB3cml0aW5nIHRoaXMgZW1haWwgdXNp
bmcgdGhlIHRodW5kZXJiaXJkIHRoYXQgY29tZXMgCndpdGggdGhlIGFjY2Vzc2libGUgQ29jb251
dAoKT24gMTAvMzAvMjEgNjowNCBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBzdXBlci10IG1heSBnZXQgeW91IGEgdGVybWluYWwgd2hpY2ggZ2l2ZXMgeW91
IGEgY29tbWFuZCBsaW5lLiAgWW91J2xsCj4ga25vdyBpZiBhICQgY29tZXMgdXAgYXMgYSAgcHJv
bXB0IG9yIGEgIyBjb21lcyB1cC4gIEZhaWxpbmcgdGhhdCBhbHQtK2YyCj4gdGhlbiB0eXBlIG1h
dGUtdGVybWluYWwgb3IgZ25vbWUtdGVybWluYWwgYW5kIGhpdCBlbnRlci4KPgo+Cj4gT24gRnJp
LCAyOSBPY3QgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
Pgo+PiBUaGFua3MgYSBtaWxsaW9uIGZvciB5b3VyIGhlbHAuIEkgdHJpZWQgeW91ciAgc3VnZ2Vz
dGlvbnMgdG8gbm8gYXZhaWwuIEhvd2V2ZXIsIHNvbWV0aGluZyBzdHJhbmdlIGhhcHBlbmVkLCB3
aGVuIEkgY29ubmVjdGVkIG15IGJyYWlsbGUgZGlzcGxheSBpdCBjb25uZWN0ZWQgdG8gYWNjZXNz
aWJsZSBjb2NvbnV0IHJpZ2h0IGF3YXkuIEkgd2FzIGFibGUgdG8gYnJvd3NlIHRoZSBtZW51cyBh
bmQgY29ubmVjdCB0byB0aGUgaW50ZXJuZXQuIER1cmluZyBteSBicm93c2luZyB0aGUgc3BlZWNo
IGNhbWUgb24uCj4+IEkgaGF2ZSB0d28gcXVlc3Rpb25zLCBob3cgY2FuIEkgZ2V0IGEgY29tbWFu
ZCBsaW5lIHByb21wdD8gTXkgc2Vjb25kIHF1ZXN0aW9uIGlzLCB3aGF0IGlzIHRoZSBjb21tYW5k
IHRvIHR1cm4gb2ZmIHRoZSBjb21wdXRlcj8gQWx0IGY0IGRpZCBub3QgdGFrZSBtZSB0aGVyZS4K
Pj4gQ2hlZXJzLAo+PiBJYnJhaGltCj4+Cj4+Cj4+IFNlbnQgZnJvbSBteSBpUGhvbmUKPj4KPj4+
IE9uIE9jdCAyOSwgMjAyMSwgYXQgMTo1NiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pgo+Pj4g77u/UHJlc3Mg
YWx0IHBsdXMgRjEuCj4+PiBEbyB5b3UgaGVhciBzcGVlY2g/Cj4+PiBJZiBub3QsIHByZXNzIGVz
Y2FwZS4KPj4+IFByZXNzIGFsdCBwbHVzIEYyCj4+PiBUeXBlCj4+PiBvcmNhCj4+PiBQcmVzcyBl
bnRlci4KPj4+IFRoaXMgc2hvdWxkIGZpeCBpdC4KPj4+Cj4+Pgo+Pj4gU2VudCBmcm9tIG15IGlQ
aG9uZQo+Pj4KPj4+PiBPbiBPY3QgMjksIDIwMjEsIGF0IDE6MjUgUE0sIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+
Cj4+Pj4g77u/SXMgdGhlcmUgYSBzdGVwIGJ5IHN0ZXAgdHV0b3JpYWwgb24gaG93IHRvIHN0YXJ0
Pwo+Pj4+IEkgZG93bmxvYWRlZCB0aGUgYWNjZXNzaWJsZSBjb2NvbnV0IGlzbyBhbmQgcHV0IGl0
IG9uIGEgYm9vdGFibGUgdXNiIGRyaXZlLiBJIHdhcyBhYmxlIHRvIGJvb3QgdGhlIG1hY2hpbmUg
ZnJvbSB0aGUgdXNiLCBidXQgdGhlcmUgd2FzIG5vIHNwZWVjaCB0byBndWlkZSBtZS4gSSB3YXMg
YWJsZSB0byBjb25maXJtIHRoYXQgSSBpbmRlZWQgYm9vdGVkIGZyb20gdXNiIHdpdGggYWNjZXNz
aWJsZSBjb2NvbnV0IGJ5IHVzaW5nIG15IGlQaG9uZSBjYW1lcmEuIEkgaGF2ZSBubyBpZGVhIGhv
dyB0byBnZXQgdGhlIHNwZWVjaCBnb2luZy4gU28gcGxlYXNlIGlmIHlvdSBoYXZlIGEgdHV0b3Jp
YWwsIHNlbmQgaXQgbXkgd2F5Lgo+Pj4+IElicmFoaW0KPj4+Pgo+Pj4+IFNlbnQgZnJvbSBteSBp
UGhvbmUKPj4+Pgo+Pj4+Pj4gT24gT2N0IDI5LCAyMDIxLCBhdCAxMDoyOSBBTSwgTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6
Cj4+Pj4+IO+7v0hlbGxvLAo+Pj4+PiBXaGVuIHVzaW5nIHRoZSBsaXZlIENELCBUaGUgc2NyZWVu
cmVhZGVyIHN0YXJ0ZWQgYXQgYm9vdC4KPj4+Pj4gQnV0IGEgIGFmdGVyIEkgaW5zdGFsbGVkIGl0
LCBJIGdldCBubyBzY3JlZW5yZWFkZXIgYXQgc3RhcnR1cC4KPj4+Pj4gQWxsIHNldHRpbmdzIGFz
IGZhciBhcyBJIGtub3cgYXJlIGNvcnJlY3QuCj4+Pj4+IFRoZSBvbmx5IHdheSB0byBnZXQgc3Bl
ZWNoIGlzIHRvIGdvIHRvIHRoZSBydW4gd2luZG93IHdpdGgKPj4+Pj4gQWx0K0YyCj4+Pj4+IFRo
ZW4gdHlwZQo+Pj4+PiBvcmNhCj4+Pj4+IEFuZCBwcmVzcyBlbnRlci4KPj4+Pj4gSSByZWluc3Rh
bGxlZCBsaW51eCBhbmQgZ290IHRoZSBzYW1lIHJlc3VsdC4KPj4+Pj4gQXMgSSB3YXMgZG9pbmcg
dGhlIGluc3RhbGwsIEkgY2hlY2tlZCB0aGUgYm94IHRvIGdldCB1cGRhdGVzIGR1cmluZyB0aGUg
aW5zdGFsbC4gQ291bGQgdGhpcyBiZSB0aGUgY2F1c2Ugb2YgbXkgdHJvdWJsZT8KPj4+Pj4KPj4+
Pj4gVGhhbmtzLAo+Pj4+PiBSb2IKPj4+Pj4KPj4+Pj4KPj4+Pj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pgo+Pj4+Cj4+Pj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+PiBCbGludXgt
bGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4KPj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

