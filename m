Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D1973490470
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 09:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642409629;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yJKNaMMG5h76KVSYAqYe6mIURM2YCBmrO2qH2xATO18=;
	b=UGIdgSs50dfo25CgKIsvhj9sR9l5w7FQwVq+9+4Sqdj6N/MNmgvd4JVO5bHIhLsWCq/psq
	8Uo4pt1VPRsQSfxqvF5/sZfx8Zom9Za5DJIHXIuj0UHJ2zUL0xeGbXESBUf/Y0+6J6JAYW
	KJfoLuiuHCrNX2Tcq8zF6ZoRbCY7XSM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-187-18a9MR5OO9WaZdmDwZy1mA-1; Mon, 17 Jan 2022 03:53:46 -0500
X-MC-Unique: 18a9MR5OO9WaZdmDwZy1mA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8D5435A064;
	Mon, 17 Jan 2022 08:53:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 00ECE1F2FF;
	Mon, 17 Jan 2022 08:53:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DBF3C4BB7C;
	Mon, 17 Jan 2022 08:53:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H8nHhd032755 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 Jan 2022 03:49:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0779B141DED6; Mon, 17 Jan 2022 08:49:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02F58141DED5
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 08:49:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDDEC101A52D
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 08:49:16 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-602-NBaPm7nMNpqRh1nq32uwPw-1; Mon, 17 Jan 2022 03:49:14 -0500
X-MC-Unique: NBaPm7nMNpqRh1nq32uwPw-1
Received: by mail-wm1-f52.google.com with SMTP id
	25-20020a05600c231900b003497473a9c4so22521169wmo.5
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 00:49:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=RmsNXbCYNMTMyvgIMxBx6H9/yoaPENVxyPd8kcwhuM4=;
	b=pb8S72as6Q5+qatyTW2Hjg1OUofB3zme2s1NG1yg318Bc+gRkiGAPE0H408iD8w98l
	4s49TG4tSwY5xPMW+hV3TOzfPsrkWgB/YbSWT72CLvioNSYRMIZToT+ZtKUuX4cxL8HU
	oH6M0oWEGyYE4gGTQpqyhVW4OZnNWyc/NWJsdZDfhCQwtbD8d84zEsv5bOiyVzDtuY0O
	tOYgCtkKlheN8JwrU4BDA/5pvGCzX8hllmEUUr7iMxERCvjI7LY2GVonfjqb/0QT3ODZ
	+iXt4XhSOPNl1z3M2NecW9DaIfaWTqL+ww0MJLYdyFm0J1P/8x7n1Tn7290i3tNROb7V
	M9vA==
X-Gm-Message-State: AOAM530puw+yNQzUqbI8vH+zZlB6BtEuCWIhlG5YFwsXrEwL45ATZes6
	uQncSg42IpDz1vsYUVLnMQgh+5dEMAM=
X-Google-Smtp-Source: ABdhPJyM1XDZ9UpFuhj26f05b0eDlmmOcqwfCLC0vQNTsH/DuriVSwpXJwY6qKUIqL6O+FZZQn9HvA==
X-Received: by 2002:a05:600c:5108:: with SMTP id
	o8mr10932965wms.190.1642409353417; 
	Mon, 17 Jan 2022 00:49:13 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.179.158])
	by smtp.gmail.com with ESMTPSA id
	k31sm11813459wms.15.2022.01.17.00.49.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 17 Jan 2022 00:49:12 -0800 (PST)
Subject: Re: Getting Started with linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<574571f2-a341-c700-d94a-415f76bc936e@gmail.com>
	<PH0PR14MB429684C61B04748E06FC0EC4C8579@PH0PR14MB4296.namprd14.prod.outlook.com>
Message-ID: <f953fedb-15e7-6e96-c9ed-875a3dc199a3@gmail.com>
Date: Mon, 17 Jan 2022 10:49:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <PH0PR14MB429684C61B04748E06FC0EC4C8579@PH0PR14MB4296.namprd14.prod.outlook.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

SGkgYWdhaW4sCgoKTXkgYmlnZ2VzdCBncmlwZSB3aXRoIEdub21lIGlzIHRoZSBmYWN0IHRoYXQg
dGhlIFNldHRpbmdzIGlzIGFsbW9zdCAKaW1wb3NzaWJsZSB0byB1c2UuIEZvciBleGFtcGxlLCBJ
IHVzZSB0aGUgTGVmdC1IYW5kIER2b3JhayBrZXlib2FyZCAKYmVjYXVzZSBJIG9ubHkgaGF2ZSBh
IHVzYWJsZSBsZWZ0IGhhbmQuIFRoaXMgaXMgcmVhbGx5IGVhc3kgdG8gc2V0IGluIApNYXRlLCBi
dXQgbm90IGluIEdub21lLiBJIGNvdWxkIG5ldmVyIGRvIHNvLCBubyBtYXR0ZXIgd2hvcyBpbnN0
cnVjdGlvbnMgCkkgZm9sbG93ZWQuCgoKSSBhbSB3aWxsaW5nIHRvIGdpdmUgR25vbWUgYSBmYWly
IHNob3QsIGlmIEkgY2FuIGZpeCBteSBLZXlib2FyZCwgCm90aGVyd2lzZSBpdCdzIGxpa2UgdHJ5
aW5nIHRvIHJhY2UgYWdhaW5zdCBhIEZlcnJhcmkgd2l0aCBhIG1vdW50YWluIApiaWtlLiBNeSBw
cm9kdWN0aXZpdHkgaXMgc2hvdCBhbGwgdG8gaGVsbCwgYW5kIEkgcmVmdXNlIHRvIGRvIHRoYXQg
dG8gCm15c2VsZi4KCgpXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZyb20g
dGhlIFNsaW50IG1hY2hpbmUgdXNpbmcgVGh1bmRlcmJpcmQKCk9uIDIwMjIvMDEvMTcgMDM6MDUs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gV2VsbCwgc2ltcGxl
ciBpcyBhIHN1YmplY3RpdmUgdGVybS4gSSBwcmVmZXIgR25vbWUgb3ZlciBNYXRlIGFuZCBJIGZp
bmQgR25vbWUgdG8gdXNlIGEgbG90IG9mIHRoZSBzYW1lIGNvbmNlcHRzIHRoYXQgSSB1c2Ugb24g
bXkgV2luZG93cyAxMCBkZXNrdG9wLgo+Cj4gLS0KPiBDaHJpc3RvcGhlciAoQUtBIENKKQo+IENo
YWx0YWluIGF0IE91dGxvb2sKPgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTog
YmxpbnV4LWxpc3QtYm91bmNlc0ByZWRoYXQuY29tIDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhh
dC5jb20+IE9uIEJlaGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4g
U2VudDogU3VuZGF5LCBKYW51YXJ5IDE2LCAyMDIyIDk6NTQgQU0KPiBUbzogTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPiBTdWJqZWN0
OiBSZTogR2V0dGluZyBTdGFydGVkIHdpdGggbGludXgKPgo+IEhpLAo+Cj4KPiBJIHBlcnNvbmFs
bHkgZG8gbm90IGxpa2UgdmFuaWxsYSBVYnVudHUsIHNpbXBseSBiZWNhdXNlIHRoZSBHbm9tZSBk
ZXNrdG9wIGRvZXMgbm90IG1ha2UgYW55IHNlbmNlIHRvIG1lIGF0IGFsbC4gSWYgaXQgd2FzIG1l
LCBhbmQgYXQgb25lIHBvaW50LCBsb25nLCBsb25nIGFnbywgaXQgd2FzLCBJJ2QgZG93bmxvYWQg
VWJ1bnR1IE1hdGUsIHNpbXBseSBiZWNhdXNlIHRoZSBkZXNrdG9wIGlzIGEgaGVsbCBvZiBhIGxv
dCBzaW1wbGVyIHRvIGdldCB1c2UgdG8sIGFuZCBhbHNvIGEgbG90IG1vcmUgbGlrZSB0aGUgdHJh
ZGl0aW9uYWwgV2luZG93cyBEZXNrdG9wIGluIHRoZSBzZW5jZSB0aGF0IHlvdSBjYW4sIGlmIHlv
dSBzbyB3aXNoLCBwdXQgYWxsIHlvdXIgY3JhcCBvbiBpdCwgdW5saWtlIEdub21lLgo+Cj4gV2Fy
bSByZWdhcmRzLAo+Cj4gQnJhbmR0IFN0ZWVua2FtcAo+Cj4gU2VudCBmcm9tIHRoZSBTbGludCBt
YWNoaW5lIHVzaW5nIFRodW5kZXJiaXJkCj4KPiBPbiAyMDIyLzAxLzE2IDE3OjE5LCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBXZWxsLCBpdCBzb3VuZHMgbGlr
ZSB5b3UncmUgdGVsbGluZyBtZSB0byBydW4gbGludXggdW5kZXIgd2luZG93cz8KPj4gVGhhdCBp
c24ndCB3aGF0IEkgaGFkIGluIG1pbmQuwqAgSGVyZSdzIHdoYXQgSSd2ZSBsZWFybmVkIHRodXMg
ZmFyOgo+PiBJIG5lZWQgdG8gZG93bmxvYWQgYSBsaW51eCBPUzsgdGhlbiBtYWtlIGEgYm9vdGFi
bGUgbWVkaWEgYW5kIGluc3RhbGwKPj4gdGhlIGxpbnV4IElTTyB0byBpdC4KPj4KPj4gV2VsbCwg
SSBkaWQgdGhhdDoKPj4gZG93bmxvYWRlZCB1YnVudHUtMjAuMDQuMy1kZXNrdG9wLWFtZDY0Lmlz
byBhbmQgKGZvciBmbGFzaGluZyBpdCB0bwo+PiB0aGUgdGh1bWIgZHJpdmUpIGJhbGVuYUV0Y2hl
ci1Qb3J0YWJsZS0xLjcuMy5leGUgbWFkZSBhIGJvb3RhYmxlIHRodW1iCj4+IGRyaXZlIGFuZCBp
bnN0YWxsZWQgdWJ1bnR1IG9uIGl0Lgo+Pgo+Pgo+PiBOb3cgSSBuZWVkIHRvIGxlYXJuIGhvdyB0
byBpbnN0YWxsIHVidW50dSBmcm9tIHRoZSB0aHVtYiBkcml2ZS7CoCBJCj4+IG11c3Qgc2VhcmNo
IGZvciBpbnN0cnVjdGlvbnMgdG8gZ28gb24gZnJvbSBoZXJlLgo+Pgo+PiBUaGFua3MuCj4+IEhv
d2FyZAo+Pgo+Pgo+PiBPbiAxLzE1LzIwMjIgNTo1MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IFVidW50dSBvciBGZWRvcmEgY291bGQgZG8gdGhhdCBm
b3IgeW91LiBhbHQtd2luZG93cy1zIHRvZ2dsZXMgc3BlZWNoCj4+PiBvbiBhbmQgb2ZmIGFuZCB5
b3Ugd2FudCB0byBjaG9vc2UgdHJ5IHVidW50dSBvciB0cnkgZmVkb3JhIGJ1dHRvbnMgb24KPj4+
IHRoZSBkZXNrdG9wIHNjcmVlbi7CoCBEZXNrdG9wIHNjcmVlbiBpcyB3aW5kb3dzLWQgb25jZSBz
eXN0ZW0gYm9vdHMKPj4+IGFuZCB5b3UgaGF2ZSBzcGVlY2guCj4+Pgo+Pj4KPj4+IE9uIFNhdCwg
MTUgSmFuIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+
Pgo+Pj4+IEhlbGxvIGFsbCwKPj4+Pgo+Pj4+IEkndmUgYmVlbiB3YW50aW5nIHRvIHRyeSBvdXQg
bGludXggYnV0IGhhdmVuJ3Qgd2FudGVkIHRvIGdpdmUgdXAgb3IKPj4+PiBtZXNzIHVwIGFueSBv
ZiBteSB3b3JraW5nIHdpbmRvd3Mgc3lzdGVtcy7CoCBXb3VsZCBpdCBiZSBwb3NzaWJsZSB0bwo+
Pj4+IGluc3RhbGwgc29tZSB2ZXJzaW9uIG9mIGxpbnV4IG9uIGEgQ0Qgb3IgYSBEVkQ7IHRoZW4g
anVzdCBib290IGEKPj4+PiBjb21wdXRlciBmcm9tIHRoYXQgZGlzayBieXBhc3Npbmcgd2luZG93
cyBhbHRvZ2V0aGVyP8KgIElmIHNvLCBJJ2QKPj4+PiBoYXZlIHRvIG1ha2UgaXQgZWl0aGVyIHRh
bGsgb3IgZHJpdmUgYSBCcmFpbGxlIGRpc3BsYXkuCj4+Pj4KPj4+PiBXb25kZXIgaWYgYW55b25l
IHdvdWxkIGhhdmUgYW55IHN1Z2dlc3Rpb25zP8KgIFRoYW5rIHlvdS4KPj4+Pgo+Pj4+IEhvd2Fy
ZAo+Pj4+Cj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+Pj4gaHR0cHM6Ly9uYTAxLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91
cmw9aHR0cHMlM0ElMkYlMkZsaXMKPj4+PiB0bWFuLnJlZGhhdC5jb20lMkZtYWlsbWFuJTJGbGlz
dGluZm8lMkZibGludXgtbGlzdCZhbXA7ZGF0YT0wNCU3QzAxJQo+Pj4+IDdDJTdDZmUzOGI0NmFm
YzQxNDE5ODA3M2QwOGQ5ZDkwODhmMDQlN0M4NGRmOWU3ZmU5ZjY0MGFmYjQzNWFhYWFhYWFhCj4+
Pj4gYWFhYSU3QzElN0MwJTdDNjM3Nzc5NDUzMDUxMjcyOTczJTdDVW5rbm93biU3Q1RXRnBiR1pz
YjNkOGV5SldJam9pTUMKPj4+PiA0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsx
aGFXd2lMQ0pYVkNJNk1uMCUzRCU3QzMwMDAmYW1wOwo+Pj4+IHNkYXRhPWwlMkZGNnBIdldUTU9L
MDJjSUV0QmJObSUyRkNFJTJCQnZjNWQlMkI3SXRndDFDRWZDcyUzRCZhbXA7cmVzCj4+Pj4gZXJ2
ZWQ9MAo+Pj4+Cj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4+PiBodHRwczovL25hMDEuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3Vy
bD1odHRwcyUzQSUyRiUyRmxpc3QKPj4+IG1hbi5yZWRoYXQuY29tJTJGbWFpbG1hbiUyRmxpc3Rp
bmZvJTJGYmxpbnV4LWxpc3QmYW1wO2RhdGE9MDQlN0MwMSU3Qwo+Pj4gJTdDZmUzOGI0NmFmYzQx
NDE5ODA3M2QwOGQ5ZDkwODhmMDQlN0M4NGRmOWU3ZmU5ZjY0MGFmYjQzNWFhYWFhYWFhYWFhCj4+
PiBhJTdDMSU3QzAlN0M2Mzc3Nzk0NTMwNTEyNzI5NzMlN0NVbmtub3duJTdDVFdGcGJHWnNiM2Q4
ZXlKV0lqb2lNQzR3TGoKPj4+IEF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dp
TENKWFZDSTZNbjAlM0QlN0MzMDAwJmFtcDtzZGF0YQo+Pj4gPWwlMkZGNnBIdldUTU9LMDJjSUV0
QmJObSUyRkNFJTJCQnZjNWQlMkI3SXRndDFDRWZDcyUzRCZhbXA7cmVzZXJ2ZWQ9Cj4+PiAwCj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8v
bmEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJG
bGlzdG0KPj4gYW4ucmVkaGF0LmNvbSUyRm1haWxtYW4lMkZsaXN0aW5mbyUyRmJsaW51eC1saXN0
JmFtcDtkYXRhPTA0JTdDMDElN0MlNwo+PiBDZmUzOGI0NmFmYzQxNDE5ODA3M2QwOGQ5ZDkwODhm
MDQlN0M4NGRmOWU3ZmU5ZjY0MGFmYjQzNWFhYWFhYWFhYWFhYSU3Cj4+IEMxJTdDMCU3QzYzNzc3
OTQ1MzA1MTI3Mjk3MyU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TUQK
Pj4gQWlMQ0pRSWpvaVYybHVNeklpTENKQlRpSTZJazFoYVd3aUxDSlhWQ0k2TW4wJTNEJTdDMzAw
MCZhbXA7c2RhdGE9bCUyRgo+PiBGNnBIdldUTU9LMDJjSUV0QmJObSUyRkNFJTJCQnZjNWQlMkI3
SXRndDFDRWZDcyUzRCZhbXA7cmVzZXJ2ZWQ9MAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbmEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRs
b29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdG1hbi5yZWRoYXQuY29tJTJGbWFpbG1hbiUy
Rmxpc3RpbmZvJTJGYmxpbnV4LWxpc3QmYW1wO2RhdGE9MDQlN0MwMSU3QyU3Q2ZlMzhiNDZhZmM0
MTQxOTgwNzNkMDhkOWQ5MDg4ZjA0JTdDODRkZjllN2ZlOWY2NDBhZmI0MzVhYWFhYWFhYWFhYWEl
N0MxJTdDMCU3QzYzNzc3OTQ1MzA1MTI3Mjk3MyU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpX
SWpvaU1DNHdMakF3TURBaUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZN
bjAlM0QlN0MzMDAwJmFtcDtzZGF0YT1sJTJGRjZwSHZXVE1PSzAyY0lFdEJiTm0lMkZDRSUyQkJ2
YzVkJTJCN0l0Z3QxQ0VmQ3MlM0QmYW1wO3Jlc2VydmVkPTAKPgo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0

