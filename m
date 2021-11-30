Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FC1463C9E
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:16:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638292585;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mtuUuN9FHIIP9MpySz/oLPiXAowgU4IZmui2p3GR1NE=;
	b=imG3lB3aULymGEQ0r+qTVAQTuveX8NBt8OOVAQLyGHcNRCDd8rnNAlnjI13Xzd2FjunC7q
	ABr1ht9dGGYLG7vwHj/rMvR7/qPXtdyMX7KbZqiHaZDLHvjyPlvTbyed06IIe87X9Bsj10
	nyN3rmjHoFs3GqOy3Y5IA1f7s6XgoSo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-552-6MJqZIzpP8OA_2UDYyLzwA-1; Tue, 30 Nov 2021 12:16:20 -0500
X-MC-Unique: 6MJqZIzpP8OA_2UDYyLzwA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8940810A9080;
	Tue, 30 Nov 2021 17:16:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF08510016F2;
	Tue, 30 Nov 2021 17:16:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1A0DB1809C89;
	Tue, 30 Nov 2021 17:16:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHG5N8008077 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:16:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BA9194047279; Tue, 30 Nov 2021 17:16:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B47694047272
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:16:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B48C80122B
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:16:05 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-294-ZYC5znKTPyusE-UZVfA1jA-1;
	Tue, 30 Nov 2021 12:16:02 -0500
X-MC-Unique: ZYC5znKTPyusE-UZVfA1jA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 9945AA3835
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 16:15:19 +0100 (CET)
Message-ID: <28532cb2-efb5-ce1c-bc61-3a1dfe036744@slint.fr>
Date: Tue, 30 Nov 2021 18:16:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: What is the easiest and most accessible editor?
To: blinux-list@redhat.com
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<fbe62f18-abaf-ac16-9f35-feab63c910d9@gmail.com>
In-Reply-To: <fbe62f18-abaf-ac16-9f35-feab63c910d9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AUHG5N8008077
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

SSBkaWRuJ3Qgd3JvdGUgdGhlIG1lc3NhZ2UgdG8gd2hpY2ggSSBhbnN3ZXIuCgpNYXliZSB0aGVy
ZSBhcmUgc2V2ZXJhbCBEaWRpZXJzPwoKTW9yZSBzZXJpb3VzbHk6CgoxLiBUaGVyZSBpcyBubyBH
VUkgdmVyc2lvbi4gVGhpcyBpcyBhIGNvbW1hbmQgbGluZSBhcHAuIEJ1dCBhZnRlciBoYXZpbmcK
aW5zdGFsbGVkIGFuIGFwcGxpY2F0aW9uLCBpdCB3aWxsIGhhdmUgYW4gZW50cnkgaW4gdGhlIEFw
cGxpY2F0aW9uIG1lbnUuIFRvCmtub3cgbW9yZSwgYWZ0ZXIgaW5zdGFsbGF0aW9uIHR5cGU6Cm1h
biBmbGF0cGFrCmZsYXRwYWsgLS1oZWxwCnlvdSBjYW4gcnVuIGZsYXRwYWsgYXMgcmVndWxhciB1
c2VyLCBpdCB3aWxsIGFzayByb290J3MgcGFzc3dvcmQgYmVmb3JlCmluc3RhbGxpbmcvcmVtb3Zp
bmcgc3R1ZmYuCjIuIFlvdXIgdW5kZXJzdGFuZGluZyBpcyBjb3JyZWN0LgozLiBJbnN0YWxsaW5n
IGl0IHdvbid0IGh1cnQsIGFzIGxvbmcgYXMgeW91IGRvbid0IHVzZSBpdCA7KQoKRGlkaWVyCi0t
CkRpZGllciBTcGFpZXIKU2xpbnQgbWFpbnRhaW5lcgoKTGUgMzAvMTEvMjAyMSDDoCAxNzo1MCwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IFdoYXQgd291
bGQgYSBmbGF0cGFrIGRvIGZvciBtZSBhcyBhIGRlc2t0b3AgZ3VpIHVzZXI/IE15IHVuZGVyc3Rh
bmRpbmcgCj4gaXMgdGhhdCBpcyBzdXBwb3NlZCB0byBhbGxvdyBtZSB0byBydW4gcGFja2FnZXMg
d2hpY2ggYXJlIG5vdCBwYXJ0IG9mIAo+IHRoZSBkaXN0cmlidXRpb24gaW4gd2hhdCBpcyBzbyBj
YWxsZWQgYSBzYW5kYm94LiBidXQgaWYgdGhlIGd1aSB2ZXJzaW9uIAo+IG9mIGl0IGlzIG5vdCBh
Y2Nlc3NpYmxlIGl0IHdvdWxkIGJlIG9mIGxpbWl0ZWQgdXNlIGZvciBtZS4gSSB3aWxsIAo+IGlu
c3RhbGwgaXQgYW55d2F5IG9uY2UgeW91IG1ha2UgaXQgYXZhaWxhYmxlLgo+IAo+IENoZWVycywK
PiAKPiBEaWRpZXIKPiAKPiBPbiAxMS8yOS8yMSA3OjIyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBIaSBJYnJhaGltIGFuZCBBbGwsCj4+Cj4+IG5vIE1p
Y3JvIGlzIG5vdCBwcm92aWRlZCBieSBTbGludCAoeWV0KS4gSSBsZWFybmVkIGl0cyBleGlzdGVu
Y2UgdG9kYXkgCj4+IDxzbWlsZT4uCj4+Cj4+IEkgaGF2ZSBidWlsdCBmbGF0cGFrIGFuZCBwaXBl
LXZpZXdlciBhbmQgYWxzbyBpdHMgR1VJIGd0ay1waXBlLXZpZXdlciAKPj4gKG5vdCBmdWxseQo+
PiBhY2Nlc3NpYmxlLCBidXQgbmljZSkuCj4+Cj4+IEl0IHRvb2sgbWUgbW9yZSB0aW1lIHRoYW4g
YW50aWNpcGF0ZWQsIGJ1dCBleHBlY3QgYSBiaWcgYmF0Y2ggb2YgCj4+IHVwZGF0ZXMgZm9yCj4+
IFNsaW50IHRvbW9ycm93ICgzNyBwYWNrYWdlcywgaW5jbHVkaW5nIHRoZSBtYW55IGRlcGVuZGVu
Y2llcyBvZiBmaWxlIAo+PiB2aWV3ZXIpLgo+Pgo+PiBJIGRpZCBzb21lIHJlYWRpbmcgYW5kIHRl
c3RzIHdpdGggZmxhdHBhaywgYW5kIHdvdWxkbid0IHJlY29tbWVuZCB0byAKPj4gdXNlIHRoYXQs
Cj4+IGVzcGVjaWFsbHkgaWYgc3BhY2Ugb24gZGlzayBpcyBhIGNvbmNlcm4uCj4+IFdvcnRoIHJl
YWRpbmcgYWJvdXQgdGhhdDoKPj4gaHR0cHM6Ly9sdWRvY29kZS5jb20vYmxvZy9mbGF0cGFrLWlz
LW5vdC10aGUtZnV0dXJlCj4+IEhvd2V2ZXIsICJjaG9zZSBwcm9taXNlLCBjaG9zZSBkdWUiIGFz
IHdlIHNheSBoZXJlLCBhIGZsYXRwYWsgcGFja2FnZSAKPj4gd2lsbCBiZQo+PiBhdmFpbGFibGUg
Zm9yIFNsaW50IHVzZXJzIHRvbW9ycm93Lgo+Pgo+PiBDaGVlcnMsCj4+Cj4+IERpZGllcgo+Pgo+
PiBMZSAzMC8xMS8yMDIxIMOgIDAwOjMwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIGEgw6ljcml0wqA6Cj4+PiBUaGFua3MgYSBidW5kbGUgZm9yIGFsbCBvZiB5b3UgZm9sa3Mu
IEkgZGlkIG5vdCBrbm93IGhvdyBtdWNoIG9mIGEgCj4+PiBkaXNjdXNzaW9uIG15IGlubm9jZW50
IGFuZCBuYWl2ZSBxdWVzdGlvbiB3b3VsZCBnZW5lcmF0ZS4gSSBsZWFybmVkIGEgCj4+PiBsb3Qg
ZnJvbSB5b3VyIGFuc3dlcnMuIEFsdGhvdWdoIEkgaGF2ZSBuZXZlciBtZXNzZWQgd2l0aCAKPj4+
IGNvbmZpZ3VyYXRpb24gZmlsZXMgc2luY2UgdGhlIGRheXMgb2YgdGhlIGF1dG9leGVjLmJhdCBp
biB0aGUgZGF5cyBvZiAKPj4+IGRvcywgSSB0aGluayBJIGhhdmUgZW5vdWdoIGNvdXJhZ2UgdG8g
cGxheSB3aXRoIGNoYW5naW5nIHNvbWUgCj4+PiBjb25maWd1cmF0aW9uIHNldHRpbmdzIHVzaW5n
IHNvbWUgb2YgdGhlIGVkaXRvcnMgeW91IHN1Z2dlc3RlZC4KPj4+Cj4+PiBJIGxhdW5jaGVkIGZl
dyBvZiB0aGVtIGJvdGggaW4gdGhlIGRlc2t0b3AgYW5kIGluIHRoZSB0ZXJtaW5hbCBhbmQgSSAK
Pj4+IGZvdW5kIGdlYW55IGFuZCBuYW5vIHRvIGJlIGVhc3kuIEkgZGlkIG5vdCBmaW5kIE1pY3Jv
LCBJIGd1ZXNzIGl0IGlzIAo+Pj4gbm90IHByZWluc3RhbGxlZCBvbiBzbGludC4KPj4+Cj4+PiBJ
IGtub3cgdGhhdCBteSBlZGl0aW5nIG5lZWRzIHdvdWxkIGJlIHZlcnkgYmFzaWMuCj4+Pgo+Pj4g
Q2hlZXJzLAo+Pj4KPj4+IElicmFoaW0KPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

