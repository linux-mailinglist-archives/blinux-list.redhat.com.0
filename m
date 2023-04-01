Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 360696D337B
	for <lists+blinux-list@lfdr.de>; Sat,  1 Apr 2023 21:23:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680377017;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=m9ZP6hzJ/ruNHnSiF90KX/RcN3LG59N+5yQpQGW8iVg=;
	b=LKYtcIvVPUUku5NefpXiUHOfHCuoYjwok8iYhraEiatK73G7QQK33Z8AuJFLG3cNrzezOu
	w+tzgbiCERltX5ajwxt7YG7qxjI/MC29y+6QzRtSMzm3YOHJ/ujco3ETWyRDVM810d7wIK
	o8TgrvnQLANwtPGUxZAbLgQDQSwLtoU=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-103-vYM1miAuP6qRBXVU9rrXQg-1; Sat, 01 Apr 2023 15:23:35 -0400
X-MC-Unique: vYM1miAuP6qRBXVU9rrXQg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BAD083C02520;
	Sat,  1 Apr 2023 19:23:33 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 49A751402C07;
	Sat,  1 Apr 2023 19:23:29 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AF2901946A44;
	Sat,  1 Apr 2023 19:23:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 1 Apr 2023 15:23:30 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Orca not speaking on new Debian install.
To: blinux-list@redhat.com
References: <mailman.1920.1680294381.2676480.blinux-list@redhat.com>
 <mailman.40.1680347357.558775.blinux-list@redhat.com>
 <mailman.82.1680367672.558774.blinux-list@redhat.com>
In-Reply-To: <mailman.82.1680367672.558774.blinux-list@redhat.com>
Message-ID: <mailman.89.1680377008.558773.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSB3b3VsZCBhbHNvIG1ha2Ugc3VyZSB0aGF0IHB1bHNlYXVkaW8gaXMgaW5zdGFsbGVkIGhhZCB0
aGlzIHNhbWUgcHJvYiAKb24gdm9pZCB3aXRjaCB3YXMgd2h5IEkgc3R1Y2sgd2l0aCBhcmNoLgoK
T24gNC8xLzIzIDEyOjQ3LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IEkgY2FuIGNvbmZpcm0gdGhlIG1lc3NhZ2VzIGFyZSB1bnJlbGF0ZWQgdG8gdGhlIGlzc3Vl
LiBEb3dubG9hZGVkIHRoZQo+IGxhdGVzdCB4NjQgU2VhbW9ua2V5IGFuZCB0cmllZCBsYXVuY2hp
bmcgaXQgd2l0aCB0aGUgc2FtZSBzY3JpcHQsIGJ1dAo+IGl0IHByb2R1Y2VzIG5vIGVycm9ycy93
YXJuaW5ncyBpbi1iZXR3ZWVuIHRoZSBub3JtYWwgeCBzdGFydGVkCj4gbm9ybWFsbHkgYW5kIHgg
c3RvcHBlZCBtZXNzYWdlcy4KPgo+IFdpbGwgZ2l2ZSBzcGRzYXkgYSB0cnkgbmV4dCB0aW1lIEkn
bSBib290ZWQgaW50byB0aGUgaW5zdGFsbGVkCj4gRGViaWFuKHR5cGluZyB0aGlzIGZyb20gYSBL
bm9wcGl4IExpdmUgc2Vzc2lvbiBzbyBJIGNhbiBnZXQgd2ViIHRoaW5ncwo+IGRvbmUgaW4tYmV0
d2VlbiB0cnlpbmcgdG8gZGVidWcgdGhlIGlzc3VlLgo+Cj4gTm90IHN1cmUgaG93IEkgY2FuIGNo
ZWNrIGlmIGF0LXNwaSBhbmQgb3JjYSBhcmUgcnVubmluZyBhcywgaW4KPiBhZGRpdGlvbiB0byBu
b3QgZ2V0dGluZyBzcGVlY2ggaW4gdGhlIEdVSSwgSSdtIGFsc28gYXBwYXJlbnRseSBsb2NrZWQK
PiBmcm9tIHN3aXRjaGluZyB0byBhIHR0eSB0aGF0J3MgYXQgdGhlIGNvbnNvbGUsIHdoaWNoIGlz
IGFsc28gYW4gaXNzdWUKPiBzaW5jZSB0aGUgd29yayBmbG93IEknbSB1c2VkIHRvIGlzIHVzaW5n
IHR0eSBzd2l0Y2hpbmcgdG8gZG8gd2ViIHN0dWZmCj4gaW4gdGhlIEdVSSBhbmQgZXZlcnl0aGlu
ZyBlbHNlIGluIHRoZSBjb25zb2xlLCB0aG91Z2ggSSB0aG91Z2h0IHRoZQo+IGluYWJpbGl0eSB0
byBzd2l0Y2ggdHR5cyB3YXMgcmF0aGVyIGlycmVsZXZhbnQgaWYgSSdtIG5vdCBnZXR0aW5nCj4g
c3BlZWNoIGluIHRoZSBHVUkgdG8gYmVnaW4gd2l0aCwgdGhvdWdoIEkgc3VwcG9zZSBpdCBpcyBt
b3JlIHJlbGV2YW50Cj4gdGhhbiBpbml0aWFsbHkgdGhvdWdodCBzaW5jZSBJIGhhZG4ndCBjb25z
aWRlcmVkIHRyeWluZyB0byBkaWFnbm9zZQo+IHRoZSBydW5uaW5nIHhzZXNzaW9uIGZyb20gdGhl
IGNvbnNvbGUuLi4KPgo+Cj4KPiBPbiA0LzEvMjMsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRp
c2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+Pj4gT24gTWFyIDMx
LCAyMDIzLCBhdCAxNjoyNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbgo+Pj4g
PGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4KPj4+IEkgdHJpZWQgcnVubmluZyB0
aGUgc2NyaXB0IEkndmUgcHJldmlvdXNseSB1c2VkIGZvciBsYXVuY2hpbmcgYSBzdGFuZAo+Pj4g
YWxvbmUgR1VJIGFwcGxpY2F0aW9uIHdpdGggT3JjYSwgdXNpbmcgRmlyZWZveC1FU1IgMTAyIHRv
IHRlc3QuCj4+PiBGaXJlZm94IHN0YXJ0cyBhcyBpdCBjcmVhdGVzIGEgbmV3IEZpcmVmb3ggcHJv
ZmlsZSBpbiBteSBob21lCj4+PiBkaXJlY3RvcnkgYW5kIGlzc3VpbmcgYSBjbG9zZSB3aW5kb3cg
a2V5Ym9hcmQgY29tbWFuZCBzcGl0cyBtZSBiYWNrIHRvCj4+PiB0aGUgY29uc29sZSwgYnV0IGlm
IG9yY2Egc3RhcnRzLCBpdCBkb2Vzbid0IHRhbGsuCj4+IEhhdmUgeW91IHRlc3RlZCB3aGV0aGVy
IFNwZWVjaC1EaXNwYXRjaGVyIGlzIHdvcmtpbmcgKGUuZy4sIHdpdGggdGhlIFNwZC1zYXkKPj4g
Y29tbWFuZCk/Cj4+IElzIGF0LXNwaSBydW5uaW5nPyBMb29rIGZvciBhdC1zcGkyLXJlZ2lzdHJ5
ZCB3aXRoIHByZXA/Cj4+IFlvdSBzaG91bGQgYWxzbyBjaGVjayB3aGV0aGVyIE9yY2EgaXMgcnVu
bmluZy4KPj4gVGhlc2UgaW52ZXN0aWdhdGlvbnMgc2hvdWxkIG5hcnJvdyBkb3duIHRoZSBwcm9i
bGVtLiBUaGVyZeKAmXMgbm90aGluZyBpbiB0aGUKPj4gZXJyb3IgbWVzc2FnZXMgeW91IHBvc3Rl
ZCB0byBzdWdnZXN0IHRvIG1lIHRoZXkgYXJlIG1vcmUgdGhhbiB3YXJuaW5ncyBvcgo+PiB0aGF0
IHRoZXkgYXJlIE9yY2EtcmVsYXRlZC4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

