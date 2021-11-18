Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A672945535F
	for <lists+blinux-list@lfdr.de>; Thu, 18 Nov 2021 04:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637205904;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QiLo3zUhSpA4A5+k0VBkObTHBgGWhljaeqQpU231O1w=;
	b=Mpzz2Mzj0vinsBBzJbSU6iq7BZpXSH87mRBpL0aYJw8mNWqRYJ83iy6YN7n+il4RHWTzSR
	wgVmSsLWsq7h0Ht1ooKDQR9mtFH7w9vK5isjmRDtDBRRbgH+Aq31Gs3UoG+JGEkeXclvGV
	zLiXZ2pYghDZEuM2tKKYwFlfQJ8yPA0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-177-jr5OieH5M1yIBfBNOaxdxg-1; Wed, 17 Nov 2021 22:25:01 -0500
X-MC-Unique: jr5OieH5M1yIBfBNOaxdxg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 65BB3875047;
	Thu, 18 Nov 2021 03:24:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED0DD101F50E;
	Thu, 18 Nov 2021 03:24:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 11E054A703;
	Thu, 18 Nov 2021 03:24:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AI3OWOn021266 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 17 Nov 2021 22:24:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A36C740CFD10; Thu, 18 Nov 2021 03:24:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E0FF40CFD0D
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 03:24:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 85677185A7B2
	for <blinux-list@redhat.com>; Thu, 18 Nov 2021 03:24:32 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-356-EiCxOau6NX2x9feGaaTwpQ-1; Wed, 17 Nov 2021 22:24:29 -0500
X-MC-Unique: EiCxOau6NX2x9feGaaTwpQ-1
Received: by mail-qv1-f41.google.com with SMTP id g1so3602021qvd.2
	for <blinux-list@redhat.com>; Wed, 17 Nov 2021 19:24:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=uv1czJA5HC+DB4IYViyo1q691m931njLptsMQEWgJZI=;
	b=E34DeLpPHaqITrqBDJJo5zuD0qJX505g6ffXaMj/QoThvV/VMxTbwkwifW3MKXfU08
	up+EJo7JJHm4Ohll37cIwpc9g37mWRXKNPiOHvwBrMbhlhHMKZI34gT3vQ0MnuPuU50+
	qpxIqKIQxQAMNa1UsF6Hh4PtqEd7r9/OzMcZ8K6NmKy6O33jCIID/5pqnOQMzcSdkM6b
	bkUosjLmUXD/1p57+LuyZlu3mq04rw31c1gWY1TrpgLN2sNCYhQ00Nf/FzVilqMrriqw
	Kcpym03HucmWfvlSREPO8pmE/5/XFw8LUFL9CnqzJBXEQMxwZhhet28Tljv/+5HZMx1o
	p7OQ==
X-Gm-Message-State: AOAM531G2c6ZvkkLv9vkRvyaO7MDs4755bp7lc9ZVxFpCZWYVvTdbadI
	/sLcFIVEwyt3Lle3dYzlw53KFSCc3uqEETUy
X-Google-Smtp-Source: ABdhPJzPffY8VGB7fM7hJmbFcQma/A+GC9ygCUUPoETrdHPt3cqcKPhuH/4GRvB+rvx7L2tQEmC2Yw==
X-Received: by 2002:a05:6214:d0e:: with SMTP id
	14mr60659424qvh.10.1637205868689; 
	Wed, 17 Nov 2021 19:24:28 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	w10sm1168290qkp.121.2021.11.17.19.24.27 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 17 Nov 2021 19:24:28 -0800 (PST)
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<9c6a8c47-c0d5-4fdb-f832-8145a23f580f@gmail.com>
Message-ID: <f9655dde-b48c-9199-6997-666a45bdbebf@gmail.com>
Date: Wed, 17 Nov 2021 22:24:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <9c6a8c47-c0d5-4fdb-f832-8145a23f580f@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB0cmllZCBNaW50LiBJdCBpcyBhIG5pY2UgZGlzdHJpYnV0aW9uIG9mIGxpbnV4LiBJdCBjb21l
cyB0YWxraW5nIG91dCAKb2YgdGhlIGJveC4gSSB3YXMgZGlzYXBwb2ludGVkIHRoYXQgSSBjb3Vs
ZCBub3QgaW5zdGFsbCBpdCBvbiBhbiAKZXh0ZXJuYWwgZGlzayBvciBTRCBjYXJkLiBIb3cgYWJv
dXQgVWJ1bnR1IGFuZCBGZWRvcmE/IENhbiB5b3UgaW5zdGFsbCAKb24gYW4gZXh0ZXJuYWwgZHJp
dmUgb3IgY2FyZD8gRG8gdGhleSBjb21lIHRhbGtpbmcgb3V0IG9mIHRoZSBib3gsIG9yIGRvIAp5
b3UgaGF2ZSB0byBpc3N1ZSBjZXJ0YWluIGNvbW1hbmRzIGF0IGEgY2VydGFpbiBtb21lbnQgZHVy
aW5nIAppbnN0YWxsYXRpb24gdG8gZ2V0IFNwZWFrdXAgdGFsa2luZz8KCgpDaGVlcnMsCgpJYnJh
aGltCgpPbiAxMS8xNy8yMSAzOjIyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+IEFscmlnaHQsIHNvLi4uCj4KPiBZb3UgZ290IGEgbG90IG9mIGNob2ljZXMg
YXMgZmFyIGFzIGRpc3Ryb3MgZ28uIFRoZXkgY2FuIGJlIGJyb2tlbiBkb3duIAo+IGludG8gc2V2
ZXJhbCBjYXRlZ29yaWVzIG9yIHRpZXJzLgo+Cj4KPiAxLiBIdWdlbHkgcG9wdWxhcjoKPgo+IFRo
aXMgaXMgeW91ciBVYnVudHUsIEZlZG9yYSwgQXJjaCBsZXZlbCBzdHVmZiwgdGhlIG1vc3QgcG9w
dWxhciwgbW9zdCAKPiB3ZWxsIHN1cHBvcnRlZWQsIGUuZy4gVWJ1bnR1IGFuZCBpdHMgc3BpbnMs
IE1pbnQsIEZlZG9yYSwgZXQgYWwuCj4KPgo+IDIuIFRoZSBsZXNzIHdlbGwgc3VwcG9ydGVkIGJ1
dCBzdGlsbCBwb3B1bGFyIG9uZXM6Cj4KPiBZb3UgZ290IHlvdXIgU29sdXMsIHlvdXIgQXJjaC9V
YnVudHUgc3BpbnMgaW4gaGVyZSwgeW91ciBEZWJpYW5zIGFuZCAKPiBzbyBvbiBnbyBoZXJlIGJl
Y2F1c2UgdGhleSBhcmVuJ3QgL2FzLyBiZWdpbm5lciBmcmllbmRseSBhcyBhbiBVYnVudHUgCj4g
b3IgTWludCBvciBhcyBodWdlbHkgcG9wdWxhciBldmVuIGlmIHRoZXJlJ3Mgbm90aGluZyB0ZWNo
bmljYWxseSB3cm9uZyAKPiB3aXRoIHRoZW0gKGxvb2tpbmcgYXQgeW91LCBTb2x1cy4uLikKPgo+
Cj4gMy4gVGhlIG5pY2hlIG9uZXM6Cj4KPiBMaWtlIGl0IHNheXMuIFRoaXMgaXMgeW91ciBuaWNo
ZSwgRWR1QnVudHUgYW5kIHNvIGZvcnRoLCB5b3VyIFNwYXRyaSdzIAo+IGRpc3RybyB0eXBlIHN0
dWZmLgo+Cj4KPiBOb3cuLi53aGF0IHdvdWxkIEkgc3VnZ2VzdCBmb3Igc29tZW9uZSBqdXN0IHN0
YXJ0aW5nIG91dD8KPgo+IFN0aWNrIHdpdGggdGVpciAxLiBVYnVudHUsIEZlZG9yYSBvciBNaW50
IGFyZSBteSBzdWdnZXN0aW9ucyBzaW5jZSBhbGwgCj4gaGF2ZSBhIG1hc3NpdmUgdXNlcmJhc2Ug
d2l0aCBhIGxvdCBvZiBzdXBwb3J0IGFuZCBmb2xrcyB3aG8gY2FuIGhlbHAgb3V0Lgo+Cj4KPiBT
bGludC9TbGFja3dhcmUgaXMgbm90LCBJTU8sIGJlZ2lubmVyIGZyaWVuZGx5IGlmIHlvdSdyZSBj
b21pbmcgb3ZlciAKPiBmcm9tIFdpbmRvd3Mgb3IgTWFjLiBTYW1lIGZvciBEZWJpYW4gd2hpY2gg
aXMgYSBnaWFudCBsZWFwIGZyb20gCj4gV2luZG93cy4gVWJ1bnR1L01pbnQvRmVkb3JhL1NvbHVz
IGFyZSBhbGwgY2xpY2sgbmV4dCwgbmV4dCwgbmV4dCwgbGV0IAo+IGl0IGluc3RhbGwsIHdoaWNo
IGlzIGEgbG90IG1vcmUgV2luZG93cy1saWtlIHRoYW4gaGF2aW5nIHRvIGdvIHRocm91Z2ggCj4g
YSB0ZXh0IG9ubHkgaW5zdGFsbGVyIHdoZW4geW91J3JlIHVzZWQgdG8gYSB3aG9sZSBvdGhlciB3
YXkgb2YgZG9pbmcgCj4gdGhpbmdzLgo+Cj4KPiBTbyBvZiBhbGwgdGhlIGJlZ2lubmVyIGZyaWVu
ZGx5IGRpc3Ryb3M/IEknZCBzdWdnZXN0IE1pbnQgTWF0ZSwgbW9zdGx5IAo+IGJlY2F1c2UgaXQn
cyBvbmUgSSd2ZSB0ZXN0ZWQgaW4gYSBWTSBhbmQgaXQgd29ya3MgZmFpcmx5IHdlbGwsIFNvbHVz
IAo+IGlzIGFub3RoZXIgSSdkIHN1Z2dlc3QgYnV0IGl0IGxhY2tzIHByb2dyYW1zIChvciBwYWNr
YWdlcyBpbiBMaW51eCAKPiBzcGVhaykgeW91IG1heSBuZWVkLiBNaW50IGhhcyBhIGxvdCBvZiBw
cm9ncmFtcyBvdXQgb2YgdGhlIGJveCBhbmQgaGFzIAo+IGRvbmUgdGhpbmdzIHRvIG1ha2UgdGhl
IHN5c3RlbSB3b3JrIGJldHRlci4KPgo+IElmIHlvdSBnb3QgdGhlIEhERCBvciBTU0Qgc3BhY2Us
IEknZCBzYXkgdHJ5IG91dCBhIGJ1bmNoIG9mIGRpc3Ryb3MgCj4gYW5kIHVzZSB0aGUgb25lIHlv
dSBsaWtlLiBNeSBwcm9ibGVtIHdpdGggYmxpbmQtc3BlY2lmaWMgZGlzdG9ycyBpcyAKPiBJJ3Zl
IGFsd2F5cyBydW4gaW50byB0aGUgJ3dlIHR1cm5lZCBvZmYgdXBkYXRpbmcgc28gbm90IHRvIGJy
ZWFrIAo+IHRoaW5ncyBhbmQgd2UgbmVlZCB0aGlzIGV4YWN0IHZlcnNpb24nIGF0dGl0dWRlcyBl
dmVuIHdoZW4gdGhlcmUncyAKPiBrZXJuZWwgYW5kIHByb2dyYW0gdXBkYXRlcyB0aGF0IGRvbid0
LCBpbiBmYWN0LCBicmVhayBzdHVmZi4gTG9va2luZyAKPiBhdCB5b3UsIENvY29udXQgYW5kIFZp
bnV4IGZvciB0aGF0IG9uZS4uLgo+Cj4gT24gMTEvMTcvMjEgMDE6NDYsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+IMKgwqDCoCBHb29kIGFmdGVybm9vbiBvciBn
b29kIGV2ZW5pbmcgb3Igd2hhdGV2ZXIgdGltZSBpdCBpcyB3aGVyZXZlciAKPj4geW91IGFyZSBy
ZWFkaW5nIHRoaXMuIE15IHN1YmplY3QgbGluZSBwcmV0dHkgbXVjaCBzYXlzIGV2ZXJ5dGhpbmcg
Cj4+IHRoZXJlIGlzIHRvIHRoaXMgbWVzc2FnZS4gSSBhbSBsb29raW5nIGZvciBpbmFwcHJvcHJp
YXRlIExlbm5peCAKPj4gZGlzdHJpYnV0aW9uIHRvIHJ1biBpbiBhIHZpcnR1YWwgZW52aXJvbm1l
bnQuIEZyb20gZXZlcnl0aGluZyBJIHRoaW5rIAo+PiBJIGtub3csIEknbSB0aGlua2luZyB0aGUg
YmVzdCBzb2x1dGlvbiBpcyBzb21ldGhpbmcgdGhhdCBjYW4gYmUgCj4+IGluc3RhbGxlZCBlYXNp
bHksIGFuZCBhbGxvdyBtZSB0byBpbnN0YWxsIG9yY2EgcmVhbGx5IHF1aWNrbHkgaWYgbm90IAo+
PiBkbyBpdCBpbiB0aGUgc2FtZSBpbnN0YWxsLiBBbnkgZ29vZCBzdWdnZXN0aW9ucz8gSSBkbyBo
YXZlIGFjY2VzcyB0byAKPj4gYSBGZWRvcmEgY29yZSBJU08gaW1hZ2UgYnV0IEknbSBqdXN0IHdv
bmRlcmluZyBpZiB0aGVyZSdzIHNvbWV0aGluZyAKPj4gYmV0dGVyIG9yIHdpbGwgdGhpcyBiZSBz
dWZmaWNpZW50PyBMb29raW5nIGZvcndhcmQgdG8gcmVhZGlnIHJlc3BvbnNlIAo+PiB3YWtlIHVw
IHRvIG15IHF1ZXN0aW9uLgo+Pgo+Pgo+PiBQbGVhc2UgYmUgYXdhcmUgdGhhdCBJIGFtIGRpY3Rh
dGluZyB0aGlzIHRvIHRoZSBjb21wdXRlciBhbmQgV2luZG93cy4gCj4+IEkgYW0gdXNpbmcgZGlj
dGF0aW9uIHNvZnR3YXJlIGJlY2F1c2Ugb2YgYW4gYWRkaXRpb25hbCBkaXNhYmlsaXR5LiBJZiAK
Pj4gdGhlcmUncyBzb21ldGhpbmcgdGhhdCBJJ3ZlIHdyaXR0ZW4gYWJvdXQgdGhhdCB5b3UgdHJ1
bHkgZG8gbm90IAo+PiB1bmRlcnN0YW5kLCBwbGVhc2Ugd3JpdGUgbWUgYW5kIGFza2VkIG1lIHdo
YXQgSSBtYXkgaGF2ZSBtZWFudC4gSSAKPj4gdGhhbmsgeW91IGtpbmRseSBpbiBhZHZhbmNlIGZv
ciByZWFkaW5nIHRoaXMuCj4+Cj4+Cj4+Cj4+IE9uIDExLzE2LzIwMjEgMzowNiBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+IFRoYW5rIHlvdSBEaWRpZXIt
YW5kLUt5bGUuIEkgd2lsbCBjZXJ0YWlubHkgcnVuIHlvdXIgY29tbWFuZCwgYnV0IGRvIAo+Pj4g
SSBuZWVkIHRvIHVuIG1vdW50IGFueXRoaW5nPyBJIHdvdWxkIGFsc28gZmlndXJlIEkgd291bGQg
YmUgc2l0dGluZyAKPj4+IG91dHNpZGUgb2YgdGhhdCBtZGVpYSBkaXJlY3Rvcnk/IE8tYW5kLXll
cywgRGlkaWVyLCBpdCBpcyB2ZmF0Lgo+Pj4gQ2hpbWUKPj4+Cj4+PiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBs
aXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pgo+Pgo+PiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

