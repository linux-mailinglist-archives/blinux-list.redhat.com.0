Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A49767BD201
	for <lists+blinux-list@lfdr.de>; Mon,  9 Oct 2023 04:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696819049;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=J1ezxr7y+yXOvP1VMIg2BhlOh4Zk20ozta3IB+URNHo=;
	b=P9ZoSRxihMcPM3/OINyT760njPf+F6s8RzJ3ztKmOFWaDx7Too4HdpzCiXmp0Z4gnRXpDl
	17BaGfeWzZP5PfOq86XILJS0bc2cyqDo9LJw4SeR98pxBiv+xpYDCESYSYXyuTJ6zTs5DN
	IloCtEk6lpAbtiW0BufQDuzlgZL3qMk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-518-a_yqu8bvOE6UdbWFxDp7Dg-1; Sun, 08 Oct 2023 22:37:26 -0400
X-MC-Unique: a_yqu8bvOE6UdbWFxDp7Dg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D0F981B15E;
	Mon,  9 Oct 2023 02:37:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 67407492B16;
	Mon,  9 Oct 2023 02:37:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9763D19465B9;
	Mon,  9 Oct 2023 02:37:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 8 Oct 2023 22:34:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Debian with Orca
To: blinux-list@redhat.com
References: <mailman.22.1696701251.2052526.blinux-list@redhat.com>
 <mailman.85.1696772374.2052530.blinux-list@redhat.com>
 <mailman.87.1696776767.2052524.blinux-list@redhat.com>
In-Reply-To: <mailman.87.1696776767.2052524.blinux-list@redhat.com>
Message-ID: <mailman.167.1696819038.2052531.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

ZMKgwqDCoCBJIHRoaW5rIEJvb2t3b3JtIHVzZXMgUGlwZXdpcmUsIHNvIG9uIG15IHN5c3RlbSB0
aGVyZSBpcyBhIHByb2Nlc3MgCmNhbGxlZCBwaXBld2lyZS1wdWxzZS7CoCBJIGRvbid0IHRoaW5r
IHlvdSBoYXZlIHRvIGhhdmUgcHVsc2UgYXVkaW8gCnJ1bm5pbmcgYXQgYWxsLsKgIEkgbWF5IGhh
dmUgZGlzYWJsZWQgaXQgdXNpbmcgJ3N5c3RlbWN0bCcgb3IgdW5pbnN0YWxsZWQgCml0LCBidXQg
SSBjYW4ndCByZW1lbWJlciBhdCB0aGUgbW9tZW50LgoKCgpPbiAxMC84LzIzIDEwOjUyLCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhpLAo+Cj4gSSBoYXBwZW4g
dG8gaGF2ZSBEZWJpYW4gMTIgQm9va3dvcm0gaW5zdGFsbGVkIGluIGEgUWVtdSB2aXJ0dWFsIG1h
Y2hpbmUsIHNvCj4gdHJpZWQsIHVzaW5nIGxpZ2h0ZG0gYXMgbG9naW4gbWFuYWdlciBhbmQgbWF0
ZSBhcyBkZXNrdG9wLgo+Cj4gT3JjYSB3YXMgYWxyZWFkeSBpbnN0YWxsZWQsIGJ1dCBub3Qgc3Rh
cnRlZCBpbiBtYXRlCj4KPiAgRnJvbSBtYXRlLXRlcm1pbmFsIEkgY291bGQgaW5zdGFsbCBlc3Bl
YWt1cCB0eXBpbmcgYXMgcm9vdDoKPiBhcHQtZ2V0IGluc3RhbGwgZXNwZWFrdXAuCj4KPiBUaGVu
IGFzIGFkdmlzZWQgZWRpdGVkIC9ldGMvbW9kdWxlcyB0byBpbmNsdWRlIGEgbGluZSB3aXRoOgo+
IHNwZWFrdXBfc29mdAo+Cj4gSSBkaWQgbm90IGVkaXQgL2V0Yy9kZWZhdWx0L2VzcGVha3VwIGFz
IGluIHRoaXMgVk0gdGhlcmUgaXMgb25seSBvbmUgdmlydHVhbAo+IHNvdW5kIGNhcmQgYW5kIGRp
ZCBub3QgY2FyZSBmb3Igd2hpY2ggdm9pY2UgdG8gdXNlLgo+Cj4gVGhlbiBzd2l0Y2hpbmcgdG8g
dHR5MiBwcmVzc2luZyBjdHJsLWFsdC1mMiBkaWQgaW5kZWVkIG1ha2UgZXNwZWFrdXAgdGFsa2lu
ZyBpbgo+IHRoaXMgY29uc29sZS4KPgo+IEJ1dCBpZiBJIHN0YXJ0IE9yY2EgaW4gbWF0ZS10ZXJt
aW5hbCBJIGNhbid0IGdldCBzcGVlY2ggaW4gdGhlIHRleHQgY29uc29sZS4KPgo+IFRoaXMgcmVt
aW5kcyBtZSBhIGRpc2N1c3Npb24gSSBoYWQgd2l0aCBTYW11ZWwgbG9uZyBhZ286IGFzIGlzIGEg
ZGVmYXVsdCBzZXR0aW5nCj4gaW4gU2xpbnQgSSBzdWdnZXN0ZWQgdG8gYWxzbyBpbmNsdWRlIGlu
IERlYmlhbiBhIGxpbmUgbGlrZSB0aGlzIGluCj4gL2V0Yy9wdWxzZS9kZWZhdWx0LnBhIHRvIHJl
ZGlyZWN0IHRoZSBwdWxzZSdzIG91dHB1dCBzdHJlYW0gdG8gYWxzYSdzIG1peGVyLAo+IHRodXMg
YXZvaWRpbmcgdGhhdCBib3RoIHB1bHNlIGFuZCBhbHNhIGNsYWltIHRoZSBzYW1lIGNhcmQ6Cj4K
PiBsb2FkLW1vZHVsZSBtb2R1bGUtYWxzYS1zaW5rIGRldmljZT1kbWl4Cj4KPgo+IFRoaXMgd2Fz
IG5vdCBhY2NlcHRlZCBmb3Igc29tZSByZWFzb24gdGhhdCBJIGRvIG5vdCByZWNhbGwgZXhhY3Rs
eS4KPgo+IEhvd2V2ZXIgeW91IGNvdWxkIGluc3RlYWQgdHJ5IHRvIHVzZSBvbmUgb2YgdGhlIG90
aGVyIHNjcmVlbnJlYWRlcnMgYXMgc3RhdGVkIGluCj4gdGhlIERlYmlhbiB3aWtpLiBDYXZlYXQ6
IEkgZGlkIG5vdCB0cnkgdGhlc2Ugb3RoZXIgbWV0aG9kcy4KPgo+IENoZWVycywKPiBEaWRpZXIK
Pgo+IExlIDA4LzEwLzIwMjMgw6AgMTU6MzcsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gYSDDqWNyaXTCoDoKPj4gIMKgwqDCoCBJbiBvcmRlciB0byBoYXZlIHNwZWVjaCBpbiB0
aGUgdGV4dCBjb25zb2xlcywgeW91IG5lZWQgdG8gbWFrZSBzdXJlIFNwZWFrdXAKPj4gb3IgQlJM
VFRZIG9yIGFub3RoZXIgc2NyZWVucmVhZGVyIGlzIGFjdGl2ZS7CoCBJdCB3b3JrcyBqdXN0IGZp
bmUgd2l0aCBTcGVha3VwLgo+PiBZb3UgbWF5IHdhbnQgdG8gcmVhZCB0aGUgRGViaWFuIGFjY2Vz
c2liaWxpdHkgRkFRLgo+Pgo+PiBUaGlzIGlzIHRoZSBzZWN0aW9uIG9uIFNwZWVjaCBzdXBwb3J0
Lgo+Pgo+PiBodHRwczovL3dpa2kuZGViaWFuLm9yZy9hY2Nlc3NpYmlsaXR5I1NwZWVjaF9TdXBw
b3J0Cj4+Cj4+IE9SQ0Egd2lsbCBiZSBvbiBjb25zb2xlIDcgYnkgZGVmYXVsdCwgYW5kIHlvdSBj
YW4gZWFzaWx5IHN3aXRjaCB0byBhIHRleHQKPj4gY29uc29sZSBhbmQgaGF2ZSBib3RoIHdvcmtp
bmcgYXQgdGhlIHNhbWUgdGltZS4KPj4KPj4KPj4KPj4gT24gMTAvNy8yMDIzIDE6NTQgUE0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBJbiBhIHNlZW1pbmds
eSBlbmRsZXNzIHRyZWsgdG8gZ2V0IGJvdGggV2luZG93cyAxMSBhbmQgZGViaWFuCj4+PiBMaW51
eCBmcm9tIGEgMy15ZWFyLW9sZCBsYXB0b3AgSSByZWNlbnRseSBhY3F1aXJlZCwgSSBoYWQgYmVl
bgo+Pj4gdHJ5aW5nIHRvIGluc3RhbGwgZGViaWFuIExpbnV4IHdpdGggb3JjYSBvbiB0byBhIGxh
cmdlLWNhcGFjaXR5Cj4+PiB0aHVtYiBkcml2ZS7CoCBUaGUgZGViaWFuIGJ1bGxzZXllIGluc3Rh
bGxzIHdlcmUgdGFraW5nIGFzIGxvbmcgYXMKPj4+IHR3ZWx2ZSBob3VycyBvciBzbyB0byBkbyBh
bmQgd2hlbiBJIGZpbmFsbHkgZ290IG9uZSB0byBmaW5pc2gsIGl0Cj4+PiB3YXMgYXMgc2xvdyBh
cyBtb2xhc3NlcyBpbiBKYW51YXJ5IG9yIHRoZSBzYW1lIHRoaW5nIGluIEp1bHkgaW4KPj4+IHRo
ZSBTb3V0aGVybiBoZW1pc3BoZXJlIGFuZCB3YXMgY29tcGxldGVseSB1c2VsZXNzIGV4Y2VwdCBm
b3Igc3NoCj4+PiBsb2dpbnMgZnJvbSBhbm90aGVyIGNvbXB1dGVyIHVzaW5nIHRoZSBjb21tYW5k
LWxpbmUgb3IgY29uc29sZQo+Pj4gbW9kZS4KPj4+Cj4+PiAgwqDCoMKgwqBPcmNhIG5ldmVyIGRp
ZCBhbnl0aGluZyBleGNlcHQgYW4gb2NjYXNpb25hbCBoYWx0aW5nCj4+PiBlcnJvciBtZXNzYWdl
Lgo+Pj4KPj4+ICDCoMKgwqDCoEZpbmFsbHksIEkgdG9vayBhIG9uZS10ZXJhYnl0ZSBDcnVjaWFs
IChCcmFuZCBuYW1lKSB1c2IKPj4+IGRyaXZlIGFuZCBkZWNpZGVkIHRvIHRyeSB0aGF0LsKgIFRo
ZSB0d2VsdmUtaG91ciBtYXJhdGhvbiByZWR1Y2VkCj4+PiB0byBsZXNzIHRoYW4gYW4gaG91ciBh
bmQgdGhlIG9yY2EgaW5zdGFsbGF0aW9uIGlzIHRhbGtpbmcgYXMgd2VsbAo+Pj4gYXMgaXQgZG9l
cyBvbiBhIGRlc2t0b3Agc3lzdGVtLCBoZXJlLsKgIFRoZSByZWFsIHByb2JsZW0gd2FzIHRoZQo+
Pj4gc2xvd25lc3Mgb2YgZGF0YSB0cmFuc2ZlciBpbiBhbmQgb3V0IG9mIHRoZSB1c2IgdGh1bWIg
ZHJpdmUuwqAgVGhlCj4+PiBvcmNhIHNjcmVlbiByZWFkZXIgYW5kIG1hdGUgdGVybWluYWwgYXJl
IHJlc3BvbmRpbmcgbmljZWx5IGFuZCBmYXN0Cj4+PiBhbmQgYWxsIHNlZW1zIHdlbGwgc28gZmFy
Lgo+Pj4KPj4+ICDCoMKgwqDCoE5vdyBmb3Igc29tZSBxdWVzdGlvbnM6Cj4+Pgo+Pj4gIMKgwqDC
oMKgSSBhbSBub3QgbmV3IHRvIG9yY2EgYnV0LCBpbiB0aGUgY291cGxlIG9mIHllYXJzIEkgaGF2
ZQo+Pj4gYmVlbiB0cnlpbmcgaXQgb24gdGhlIGRlc2t0b3AgYW5kIG5vdywgdGhlIGxhcHRvcCwg
SSByZWFsbHkgbWlzcwo+Pj4gaGF2aW5nIGEgY29tbWFuZC1saW5lIGNvbnNvbGUgd2hpY2ggSSBj
YW4gZ2V0IHdpdGggbm8gcHJvYmxlbSBpZgo+Pj4gSSBzc2ggaW4gdG8gZWl0aGVyIG9yY2Egc3lz
dGVtIHdpdGggYSBjb21tYW5kLWxpbmUgTGludXggYm94Lgo+Pj4KPj4+ICDCoMKgwqDCoFRoaXMg
aXMgdGhlIHN0YW5kYXJkIGRlYmlhbiBpbnN0YWxsIGluc3RhbGxhdGlvbiBpbWFnZQo+Pj4gb25l
IGNhbiBkb3dubG9hZCBhbmQgaXQgZm91bmQgdGhlIGxhcHRvcCBzb3VuZCBpbnRlcmZhY2Ugd2l0
aG91dAo+Pj4gYW55IHNwZWNpYWwgbWVhc3VyZXMgc3VjaCBhcyBpbnN0YWxsaW5nIGEgdXNiIHNv
dW5kIGNhcmQgLsKgIE9uCj4+PiBzb21lIHN5c3RlbXMsIHlvdSBkbyBnZXQgY29tbWFuZC1saW5l
IGNvbnNvbGVzIGJ5IHByZXNzaW5nIENvbnRyb2wrQWx0K0YyCj4+PiBhbmQgeW91IGNhbiBnbyBi
YWNrIHRvIHRoZSBHVUkgYnkgQ29udHJvbCtBbHQrZjEuwqAgSSB0aGluayB0aGVyZSBhcmUKPj4+
IG1heWJlIDUgbW9yZSBjb21tYW5kLWxpbmUgY29uc29sZXMgaW4gd2hpY2ggc3BlYWt1cCB0YWxr
cy7CoCBPbgo+Pj4gdGhpcyBpbnN0YWxsYXRpb24sIENvbnRyb2wrQWx0K2YyIHByb21wdHMgb25l
IHRvIHR5cGUgYSBjb21tYW5kIG9yIEVTQyB0bwo+Pj4gZXhpdC7CoCBPbmUgb2YgdGhlIG90aGVy
IGp1c3Qga2lsbHMgc3BlZWNoIGFuZCBub3RoaW5nIG11Y2ggc2VlbXMKPj4+IHRvIGhhcHBlbi7C
oCBMaWtlIHRoZSBzcG9pbGVkIHJpY2gga2lkIG9uIENocmlzdG1hcyBtb3JuaW5nLCBJCj4+PiB3
YW50IGl0IGFsbCBidXQgbm90IGluIGEgbmFzdHkgd2F5IHNvIEkgYW0gbm90IGNvbXBsYWluaW5n
LsKgIElmCj4+PiBuZWNlc3NhcnksIEkgY291bGQgZ2V0IGFub3RoZXIgaG9wZWZ1bGx5IGZhc3Qg
dXNiIGRyaXZlIGFuZAo+Pj4gaW5zdGFsbCBkZWJpYW4gd2l0aG91dCB0aGUgR1VJIGFuZCBnZXQg
dGhlIGNvbnNvbGVzIGJ1dCBzaW5jZSB0aGlzCj4+PiBpcyBhIGxhcHRvcCwgZXZlcnkgZXh0cmEg
cGllY2Ugb2YgZ2VhciBtYWtlcyBpdCBsZXNzIHBvcnRhYmxlLgo+Pj4gQWxzbywgRXZlcnkgaW5z
dGFuY2Ugb2YgTGludXggb25lIG1ha2VzIHdpbGwgaGF2ZSBhIGRpZmZlcmVudCBzc2gKPj4+IGhv
c3Qga2V5IHVubGVzcyBvbmUgY29waWVzIHRoZSBzYW1lIGtleSB0byBhbGwgaW5zdGFuY2VzLgo+
Pj4gT3RoZXJ3aXNlIHRoZSBzeXN0ZW1zIHlvdSBhcmUgdXNpbmcgc3NoIHRvIHRhbGsgdG8gdGhp
bmsKPj4+IHNvbWV0aGluZydzIHdyb25nIHdoZW4gdGhleSBzZWUgdGhlIGRpZmZlcmVudCBob3N0
IGtleXMuCj4+Pgo+Pj4gIMKgwqDCoMKgSSB3b3VsZCBhbHNvIGxpa2UgdG8gc2F5IHNvbWUgZ29v
ZCB3b3JkcyBhYm91dCBzbGludC7CoCBJCj4+PiB3YXMgYWJsZSB0byBnZXQgYSBjb21tYW5kLWxp
bmUgc2V0IG9mIGNvbnNvbGVzIGJ1dCB0aGUgb25seSB3YXkgSQo+Pj4gY291bGQgZ2V0IGFueXRo
aW5nIHRvIHRhbGsgd2FzIHRvIHBsdWcgaW4gYSB1c2Igc291bmQgY2FyZC7CoCBPbmUKPj4+IHN1
Y2ggY2FyZCB3YXMgYSBDcmVhdGl2ZSBMYWJzIFNvdW5kQmxhc3RlciBzZXJpZXMgdXNiIHNvdW5k
IGNhcmQKPj4+IHdoaWNoIHdvcmtlZCBwZXJmZWN0bHkgZm9yIHRoZSBzcGVha3VwIHZvaWNlIHBs
dXMgSSBhbHNvIHRyaWVkCj4+PiBhbm90aGVyIHZlcnkgaW5leHBlbnNpdmUgc291bmQgY2FyZCB3
aGljaCBhbHNvIHdvcmtlZCB3aXRoIG5vCj4+PiBkaWZmZXJlbmNlIGJldHdlZW4gdGhlIENyZWF0
aXZlIExhYnMgYW5kIHRoZSBzb3VuZCBjYXJkIHdob3NlCj4+PiBuYW1lIGVzY2FwZXMgbWUsIGJ1
dCBzbGludCBjb3VsZG4ndCBhdXRvbWF0aWNhbGx5IGZpbmQgdGhpcwo+Pj4gbGFwdG9wJ3MgYnVp
bHQtaW4gc291bmQgY2FyZC4KPj4+Cj4+PiAgwqDCoMKgwqBFdmVyeXRoaW5nIGVsc2UgaW4gc2xp
bnQgdGhhdCBJIHRyaWVkIGFwcGVhcnMgdG8gaGF2ZSBubwo+Pj4gcHJvYmxlbXMgLgo+Pj4KPj4+
ICDCoMKgwqDCoFNvdW5kIHN5c3RlbSBoYXJkd2FyZSBpcyBzbyBwcm9wcmlldGFyeSB0aGF0IGF1
ZGlvIGlzc3Vlcwo+Pj4gaW4gTGludXggYXJlIGxpa2UgZ3JhaW5zIG9mIHNhbmQgb24gdGhlIGJl
YWNoLCBjb21tb24gYW5kIGdyaXR0eQo+Pj4gd2hlbiB5b3UgaGF2ZSB0byBkZWFsIHdpdGggdGhl
bS4KPj4+Cj4+PiAgwqDCoMKgwqBTbywgbXkgcHJpbWFyeSBxdWVzdGlvbiBpcyBhbSBJIG1pc3Np
bmcgc29tZXRoaW5nIGFib3V0Cj4+PiB0aGUgY29tbWFuZCBjb25zb2xlcz/CoCBUaGUgbWF0ZSB0
ZXJtaW5hbCBzZWVtcyB0byBiZSB3b3JraW5nIGJ1dAo+Pj4gaXQncyBub3QgcXVpdGUgdGhlIHNh
bWUgYXMgYSBjb21tYW5kLWxpbmUgY29uc29sZS4KPj4+Cj4+PiBNYXJ0aW4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3Rp
bmZvL2JsaW51eC1saXN0Cg==

