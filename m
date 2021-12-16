Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1B44772F5
	for <lists+blinux-list@lfdr.de>; Thu, 16 Dec 2021 14:16:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639660599;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7+GwiaGYSJBXxn84afas/6+vobCm7T5N6My3I1qp5xY=;
	b=dAL3ig1c9s15QtAVv0Dqi3te+Cjg/HkF0KIfjpZbAtHhXwVbTQ+h3PsUSorOTGgPuwFgAd
	HxAHs+XA0FE0EKPD+Vb+R00iIwK35kk0Bk6idIN7Y2kNzTIqrJpgvDgkCmW1ZdCEMSvinX
	udPrNzdon19n6qdreiW0CFKAEW1deik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-615-9Yg4F7_SMHSPELfCDKQHJw-1; Thu, 16 Dec 2021 08:16:36 -0500
X-MC-Unique: 9Yg4F7_SMHSPELfCDKQHJw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8E64100D680;
	Thu, 16 Dec 2021 13:16:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 253545BE10;
	Thu, 16 Dec 2021 13:16:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 918931809CB8;
	Thu, 16 Dec 2021 13:16:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BGDGJpu023125 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Dec 2021 08:16:19 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 902E21402405; Thu, 16 Dec 2021 13:16:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BEE21402403
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 13:16:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6DE8C185A7B4
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 13:16:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-325-_-kKujvBODec0QYU78vr6A-1; Thu, 16 Dec 2021 08:16:17 -0500
X-MC-Unique: _-kKujvBODec0QYU78vr6A-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JFCL93slgz3jJq
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 08:16:17 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JFCL93YBpzcbc; Thu, 16 Dec 2021 08:16:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JFCL93C4lzcbP
	for <blinux-list@redhat.com>; Thu, 16 Dec 2021 08:16:17 -0500 (EST)
Date: Thu, 16 Dec 2021 08:16:17 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Attempting a Jenux install, again.
In-Reply-To: <68f018b4-1a42-e909-2ae3-fc11a1f29fc2@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112160814510.4830@panix1.panix.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
	<0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
	<alpine.NEB.2.23.451.2112140727470.19510@panix1.panix.com>
	<70d6b356-24f0-a06f-29ab-86fc8adad896@gmail.com>
	<5b241b8a-802e-e3d8-d86b-a655dd0fea72@gmail.com>
	<e4240782-5385-9ba8-d741-5469440faa16@gmail.com>
	<06c10c61-7e1a-d426-0fe1-afc92754e0e8@gmail.com>
	<c8152283-f56c-7228-53dc-f1ee8ec2f9fc@gmail.com>
	<68f018b4-1a42-e909-2ae3-fc11a1f29fc2@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BGDGJpu023125
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gdGhlIG51bXBhZCwgaW5zZXJ0LWVudGVyIHRvZ2dsZXMgZXNwZWFrIG9mZiBhbmQgb24uCgoK
T24gVGh1LCAxNiBEZWMgMjAyMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3
cm90ZToKCj4gSnVzdCBhcyBhIGZvbGxvdyB1cCwgSSd2ZSBnb25lIGJhY2sgdGhyb3VnaCB0aGUg
Z3VpZGVkIGluc3RhbGxlciBhbmQgaXQgd29ya3MKPiBmbGF3bGVzc2x5LiBIb3dldmVyLCBJJ20g
bm90IGZpbmRpbmcgdGhlIGRvY3VtZW50YXRpb24gdG8gdG9nZ2xlIGVzcGVha3Uncwo+IHNwZWVj
aCBvdXRwdXQuIEl0J3Mgbm90IGFuIGlzc3VlIHdoZW4gdGhlIHN5c3RlbSdzIGluc3RhbGxlZCwg
YnV0IGl0IGlzIHZlcnksCj4gdmVyeSBjaGF0dHkgd2hlbiBpbnN0YWxsaW5nIHNvIEkgd2FzIGhv
cGluZyB0byBiZSBhYmxlIHRvIHR1cm4gdGhlIHNwZWVjaCBvZmYKPiBmb3IgYSBmZXcgbW9tZW50
cy4gT3RoZXIgdGhhbiB0aGF0LCB0aGUgaW5zdGFsbGVyJ3MgZ2V0dGluZyB0d2Vha3MgYW5kCj4g
dXBkYXRlcywgTm92ZW1iZXIncyBkaWRuJ3QgZ2l2ZSB5b3UgdGhlIGNob2ljZSBiZXR3ZWVuIFBp
cGV3aXJlL1B1bHNlYXVkaW8gKG9yCj4gbnVsbCBpZiB5b3UgYXJlIGRvaW5nIGEgYmFzZSBpbnN0
YWxsKSBvciB0aGUgc3dhcCBvcHRpb24uIEknbSBrZWVuIHRvIHNlZQo+IHdoZXJlIHRoZSBndWlk
ZWQgaW5zdGFsbGVyIGdvZXMsIGl0IG1ha2VzIGdldHRpbmcgYW4gQXJjaCBzeXN0ZW0gdXAgYW5k
IGdvaW5nCj4gZWFzaWVyIG5vdwo+Cj4gT24gMTIvMTUvMjEgMjA6NTUsIExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPgo+ID4gV29ya2VkIGxp
a2UgYSBjaGFtcC7CoCBUaGUgb24sbHkgdGhpbmcgSSB3YXMgY29uZnVzZWQgYWJvdXQgd2FzIHRo
ZSBkaXNrCj4gPiBzZWxlY3Rpb24uwqAgQWZ0ZXIgc2VsZWN0aW5nIHRoZSBmZGlzayB5b3UgYXJl
IHN0aWxsIGF0IGRpc2sgc2VsZWN0aW9uIHN0ZXAKPiA+IHdoaWNoIHlvdSBjYW4ganVzdCBwcmVz
cyBlbnRlciB0byBjb250aW51ZSBhcyB0aGUgZGlzayB5b3UgY2hvc2UgYXQgdGhlCj4gPiBmaXJz
dCBwcm9tcGVkIGl0IGlzIGFscmVhZmR5IHNlbGVjdGVkLCBidXQgdGhpcyBpcyBub3Qgc3Bva2Vu
IGJ5IG9yY2EKPiA+IGhvd2V2ZXIganVzdCBrZWVwIHRoaXMgaW4gbWluZC4gQWxzbywgdGhlIGRl
c2t0b3Agc2VsZWN0aW9uIHdlbnQgZmluZS7CoCBJCj4gPiBzZWxlY3RlZCBhbHNhLXV0aWxzLCBl
c3BlYWt1cCwgZmlyZWZveCBhbmQgdGh1bmRlcmJpcmQgYW5kIGV2ZXJ5dGhpbmcgZWxzZQo+ID4g
d2VudCBmaW5lIGF0IGxlYXN0IGluIG15IHZtIHdoaWNoIGlzIHVzaW5nIFVFRkkuCj4gPgo+ID4K
PiA+IE1hdHRoZXcKPiA+Cj4gPgo+ID4KPiA+IE9uIDEyLzE0LzIwMjEgNzowNiBQTSwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+PiBPbmNlIHlvdSBib290IHRo
ZSBJU08gd2l0aCBzcGVlY2ggKHdoaWNoIGlzIGRvd24gb25jZSBvbiB0aGUgYm9vdCBtZW51LCBz
bwo+ID4+IGp1c3QgZG93biBhbmQgZW50ZXIgdGhlbiB3YWl0KSwgYW5kIGl0IGxvZ3MgeW91IGlu
IGFuZCB5b3UgZ2V0IHRoZQo+ID4+IHJvb3RAYXJjaGlzbyBwcm9tcHQganVzdCB0eXBlIGFyY2hp
bnN0YWxsIGFuZCBpdCdsbCBkbyBhIGNvbm5lY3Rpb24gdGVzdAo+ID4+IHRoZW4gY29tZSB1cCB3
aXRoIHRoZSBndWlkZWQgaW5zdGFsbGVyLgo+ID4+Cj4gPj4gOTklIG9mIGl0IGlzIGludHVpdGl2
ZS4gSSd2ZSBub3QgZ290IGFyb3VuZCB0byB0ZXN0aW5nIHRoZSBpbnN0YWxsIG9wdGlvbgo+ID4+
IGZvciBkZXNrdG9wcy4gSSBwZXJzb25hbGx5IGdvIHdpdGggYSBiYXNlIGluc3RhbCBhbmQgY3Vz
dG9taXplIG15IHN5c3RlbSBhcwo+ID4+IG5lZWRlZCwgYnV0IFlNTVYgb24gdGhhdCBvbmUuIFRo
ZSBvbmx5IGJpdCB0aGF0IHRyaXBwZWQgbWUgdXAgd2FzIHRoZQo+ID4+IHJlZ2lvbiBzZWxlY3Rp
b24gKHNlY29uZCBzdGVwKSBhbmQgdGhlIGRpc2sgc2VsZWN0aW9uIHNpbmNlIHRoYXQgY2hhbmdl
ZCB0bwo+ID4+IHdoZXJlIHlvdSBzZWxlY3QgeW91ciBkaXNrLCB0aGVuIGRvbid0IHNlbGVjdCBh
bnl0aGluZyB0byBjb250aW51ZS4gSXQKPiA+PiB3YWxrcyB5b3UgdGhyb3VnaCB0aGUgc3RlcHMg
b25lIGF0IGEgdGltZSwgYW5kIGlmIHlvdSBrbm93IGhvdyB0byBpbnN0YWxsCj4gPj4gQXJjaCBh
Y2Nlc3NpYmx5LCB0aGUgZXh0cmEgcGFja2FnZXMgc3RlcCBpcyB0aGUgc2FtZSBhcyBwYWNzdHJh
cC4KPiA+Pgo+ID4+IEZldyB0aGluZ3MgdG8gbm90ZToKPiA+Pgo+ID4+IDEuIEl0IGF1dG8gZW5h
YmxlcyBlc3BlYWt1cCBpZiBpdCdzIGluc3RhbGxlZCAoSSB1c3VhbGx5IGluc3RhbGwgaXQgb3V0
IG9mCj4gPj4gaGFiaXQpCj4gPj4KPiA+PiAyLiBJJ20gbm90IHN1cmUgb2YgdGhlIGtleXMgdG8g
c2h1dCBlc3BlYWt1cCBvZmYgaG93ZXZlci4uLgo+ID4+Cj4gPj4gQW5kIHRoZSBiaWcsIGJpZyBv
bmUuIFRoZSBsYXN0IEkgY2hlY2tlZCwgTm92ZW1iZXIuIEl0IG9ubHkgd29ya2Qgb24gVUVGSQo+
ID4+IG1hY2hpbmVzIC9idXQvIHRoYXQgbWlnaHQgaGF2ZSBiZWVuIGNoYW5nZWQuIEkgaG9uZXN0
bHkgZG9uJ3Qga25vdyBpZiBpdCdzCj4gPj4gd29ya2luZyBvbiBsZWdhY3kgQklPUyBtYWNoaW5l
cwo+ID4+Cj4gPj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+
Pj4gSGksCj4gPj4+Cj4gPj4+Cj4gPj4+IElzIHRoaXMgZ3VpZGVkIGluc3RhbGxlciBwYXJ0IG9m
IHRoZSBhcmNoIGlzbz/CoCBJZiBzbywgaG93IGRvIHlvdSBnZXQgaXQKPiA+Pj4gZ29pbmc/P8Kg
IEkgd291bGQgbGlrZSB0byBnaXZlIHRoaXMgYSB0ZXN0IGFuZCBzZWUgaG93IHRoaXMgd29ya3Mu
Cj4gPj4+Cj4gPj4+Cj4gPj4+IE1hdHRoZXcKPiA+Pj4KPiA+Pj4KPiA+Pj4KPiA+Pj4gT24gMTIv
MTQvMjAyMSA3OjU5IEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+ID4+Pj4gZWxsIHRoZXJlJ3MgYSBoaXN0b3J5IG9mIHBvc3RzIGFzIGZhciBhcyBKZW51eCBi
cmVha2luZyB3aXRoIHBlb3BsZSB3YXkKPiA+Pj4+IG1vcmUgcXVhbGlmaWVkIHRoYW4gbWUgZGln
Z2luZyB0aHJvdWdoIHRoZSBjb2RlIGFuZCBoYXZpbmcgdGhpbmdzIGJyZWFrCj4gPj4+PiBvbiB0
aGVpciBpbnN0YWxscy4gSSd2ZSBwZXJzb25hbGx5IGhhZCBKZW51eCBjb3JydXB0IGEgZmxhc2gg
ZHJpdmUgdG8gdGhlCj4gPj4+PiBwb2ludCBpdCdzIGEgZ2xvcmlmaWVkIHBhcHJ3ZWlnaHQgZHVl
IHRvIHNoZW5hbmlnYW5zIHdpdGggd3JpdGluZyB0byBpdC4KPiA+Pj4+Cj4gPj4+PiBUaGF0IGJl
aW5nIHNhaWQuIE5vdyBBcmNoIGl0c2VsZiBoYXMgdGhlIGd1aWRlZCBtb2RlIGluc3RhbGxlciwg
d2hpY2ggaXMKPiA+Pj4+IHBlcmZlY3RseSB1c2VhYmxlIHdpdGggZXNwZWFrdXAgYW5kIHRoYXQg
b25jZSBpbnN0YWxsZWQsIGFzIG9mIHRoaXMgbW9udGgKPiA+Pj4+IGF1dG8gZW5hYmxlcyBzcGVl
Y2gvYnJhaWxsZSBhdCB0aGUgZW5kIG9mIHRoZSBpbnN0YWxsLCBJJ2QgYXJndWUgQXJjaCBhcmUK
PiA+Pj4+IGRvaW5nIGEgYmV0dGVyIGpvYiBhdCBtYWtpbmcgdGhlaXIgc3lzdGVtcyBhY2Nlc3Np
YmxlKiB0aGFuIHBlb3BsZSBhc3N1bWUKPiA+Pj4+IHRob3VnaC4gSTtkIGFsc28gc2F5IG9rYXks
IEFyY2ggaGFzIGEgZ3VpZGVkIGluc3RhbGxlciB0aGF0IHdvcmtzKiogYW5kCj4gPj4+PiBpZiBi
b290ZWQgd2l0aCBhY2Nlc3NpYmlsaXR5IG9uLCBrZWVwcyB0aG9zZSBzZXR0aW5ncyBhbmQgZ2l2
ZXMgeW91IGEKPiA+Pj4+IHdvcmtpbmcgKGJhc2UsIG1pbmQpIHN5c3RlbSBvdXQgb2YgdGhlIGJv
eC4KPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gKiBQcm92aWRlZCB5b3UgaW5zdGFsbCBhbHNhLXV0aWxz
L2VzcGVha3VwIGFzIHBlciBhIG5vcm1hbCBhY2Nlc3NpYmlsaXR5Cj4gPj4+PiBBcmNoIGluc3Rh
bGwuIFRoZXJlJ3MgYSBzdGVwIGluIHRoZSBndWlkZWQgaW5zdGFsbGVyIHdoZXJlIGl0IGFza3Mg
Zm9yCj4gPj4+PiBleHRyYSBwYWNrYWdlcywgdGhhdCdzIHdoZXJlIHlvdSBwbHVnIGFsc2EtdXRp
bHMvZXNwZWFrdXAgaW4uCj4gPj4+PiBlc3BlYWt1cC5zZXJ2aWNlIGdldHMgYXV0byBlbmFibGVk
IGF0IHRoZSBlbmQgb2YgdGhlIGluc3RhbGwgYXMgcGFydCBvZgo+ID4+Pj4gdGhlIGluc3RhbGxl
cgo+ID4+Pj4KPiA+Pj4+Cj4gPj4+PiAqKiBXb3JrcywgYXMgbG9uZyBhcyB5b3UncmUgb2theSB3
aXRoIGEgYmFzZSBpbnN0YWxsIGJ1dCBnZXR0aW5nIGEgREUgdXAKPiA+Pj4+IGFuZCBydW5uaW5n
IGlzbid0IHRoYXQgYmFkIHJlYWxseSBvbmNlIHlvdSBkaWQgdGhlIGluc3RhbGwuIEkndmUgbm90
IGdvdAo+ID4+Pj4gdGhlIGRlc2t0b3Agb25lcyB0byB3b3JrIGN1cnJlbnRseSBidXQgc3RpbGwg
cG9raW5nIGF0IGl0LiBJJ20gdGVtcHRlZCB0bwo+ID4+Pj4gYWRkIGluIG9yY2Etc3BlZWNoLWRp
c3BhdGNoZXIgYW5kIHNvIGZvcnRoIGludG8gdGhlIGV4dHJhIHBhY2thZ2VzIHN0ZXAuCj4gPj4+
Pgo+ID4+Pj4KPiA+Pj4+IGF0IHRoYXQgaG93ZXZlci4KPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gT24g
MTIvMTQvMjEgMTI6NDYsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4gPj4+Pj4gSGksCj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+IEkgZGlkIHVzZSB0aGUgbGF0ZXN0
IGFzIG9mIGFib3V0IDE1IGhvdXJzIGFnby4gSSBkaWQgYWxzbyB2ZXJpZnkgdGhlCj4gPj4+Pj4g
aXNvLgo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiBUaGUgaXNzdWUgdGhpcyB0aW1lIGlzIHRoYXQg
YWZ0ZXIgcnVubmluZyB0aGUgaW5zdGFsbGVyIGFuZCByZWJvb3RpbmcsCj4gPj4+Pj4gbm90aGlu
ZyBzcG9rZS4gdGhlIHNlZWluZ0FJIG9uIHRoZSBpcGhvbmUgY291bGQgcmVhZCB0aGUgc2NyZWVu
IGp1c3QKPiA+Pj4+PiBmaW5lLCBidXQgSSBjb3VsZG4ndAo+ID4+Pj4+Cj4gPj4+Pj4KPiA+Pj4+
PiBMYXN0IHRpbWUgaXQgd2FzIG9yY2EgaW4gTWF0ZSB0aGF0IGRpZG4ndCB3YW50IHRvIGNvbWUg
b24sIG5vIG1hdHRlcgo+ID4+Pj4+IHdoYXQgSSBkby4KPiA+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4g
SSBmb3VuZCB0aGF0IHdpdGggSmVudXgsIG5ldmVyIGV4cGVjdCB0aGUgc2FtZSB0aGluZyB0byBn
byB3cm9uZyB0d2ljZSwKPiA+Pj4+PiBob3dldmVyIHNvbWV0aGluZyB3aWxsIGJyZWFrLgo+ID4+
Pj4+Cj4gPj4+Pj4KPiA+Pj4+PiBXYXJtIHJlZ2FyZHMsCj4gPj4+Pj4KPiA+Pj4+Pgo+ID4+Pj4+
IEJyYW5kdAo+ID4+Pj4+Cj4gPj4+Pj4gT24gMjAyMS8xMi8xNCAxNDozMSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiA+Pj4+Pj4gSmVudXggZ2V0cyByZWd1bGFy
IHVwZGF0ZXMgbGF0ZXN0IGlzIDIwMjEuMTEuMTcgdW5sZXNzIHRoYXQgY2hhbmdlZAo+ID4+Pj4+
PiB0b2RheS4KPiA+Pj4+Pj4gRGlkIHlvdSB2ZXJpZnkgeW91ciBpc28gZG93bmxvYWQ/wqAgSWYg
SSBmaW5kIGFuIC5zaGE1MTIgZmlsZSBmaWxlIGZvcgo+ID4+Pj4+PiBhbgo+ID4+Pj4+PiBpc28s
IEkgd29uJ3QgaW5zdGFsbCB0aGUgaXNvIHdpdGhvdXQgZmlyc3QgdmVyaWZ5aW5nIGl0IHdpdGgg
dGhlCj4gPj4+Pj4+IC5zaGE1MTIKPiA+Pj4+Pj4gZmlsZS7CoCBTbyB0d28gcG90ZW50aWFsIHBy
b2JsZW1zIG5vdCB1c2luZyBjdXJyZW50IEplbnV4IGluc3RhbGwgaXNvIG9yCj4gPj4+Pj4+IGZh
aWxlZCB0byB2ZXJpZnkgaXNvLsKgIElmIHlvdSBkb24ndCBoYXZlIHRob3NlIHR3byBwcm9ibGVt
cywgcGxlYXNlCj4gPj4+Pj4+IHdyaXRlCj4gPj4+Pj4+IGRubC5uYXNoQGdtYWlsLmNvbSBhbmQg
bGV0IGhpbSBrbm93IHRoZSBwcm9ibGVtIHlvdSBlbmNvdW50ZXJlZCBvbiB5b3VyCj4gPj4+Pj4+
IGluc3RhbGwgZmFpbC7CoCBUaGF0IG9uZSBpcyB0aGUgZGV2ZWxvcGVyLgo+ID4+Pj4+Pgo+ID4+
Pj4+Pgo+ID4+Pj4+PiBPbiBUdWUsIDE0IERlYyAyMDIxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIHdyb3RlOgo+ID4+Pj4+Pgo+ID4+Pj4+Pj4gSGksCj4gPj4+Pj4+Pgo+ID4+
Pj4+Pj4KPiA+Pj4+Pj4+IEplbnV4IGZhaWxlZCBvbiBtZSwgYWdhaW4uIEkgdGhpbmsgSSdsbCBn
aXZlIGl0IGEgc2tpcCBmb3Igbm93LCB0aGF0Cj4gPj4+Pj4+PiBpcyB1bmxlc3MKPiA+Pj4+Pj4+
IHRoZSBkZXYgYWN0dWFsbHkgZml4ZXMgdGhlIHRoaW5nLgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+Cj4g
Pj4+Pj4+PiBJIGFtIG9uIEZlZG9yYSwgZm9yIG5vdywgYmVjYXVzZSBpdCB3YXMgdGhlIG5lYXJl
c3QgVXNiIHN0aWNrIEkgY291bGQKPiA+Pj4+Pj4+IGdyYWIKPiA+Pj4+Pj4+IHF1aWNrbHkuCj4g
Pj4+Pj4+Pgo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IEkgbWlnaHQganVzdCBnaXZlIHRoZSB2YW5pbGxh
IEFyY2ggSVNPIGFub3RoZXIgZ28uIFdoeSBub3Q/Cj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gT24gMjAy
MS8xMi8xNCAxMzowNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToK
PiA+Pj4+Pj4+PiDCoMKgb3IgTWFuamFybyBBcmNoaXRlY3QuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+
PiBQZXJzb25hbGx5LiBJJ3ZlIGhhZCBzdWNjZXNzIHdpdGggdGhlIHZhbmlsbGEgQXJjaCBJU08g
YW5kIHRoZSBndWlkZWQKPiA+Pj4+Pj4+PiBpbnN0YWxsZXIgKHRoZSBhcmNoaW5zdGFsbCBvbmUp
LCBJIGp1c3Qgc2V0IGl0IHRvIGJvb3QgdXAgdGFsa2luZywKPiA+Pj4+Pj4+PiB3ZW50Cj4gPj4+
Pj4+Pj4gdGhyb3VnaCBpdCBhbmQgYWRkZWQgaW4gYWxzYS11dGlscy9lc3BlYWt1cCBhbmQgdGhl
biBwdXQKPiA+Pj4+Pj4+PiBzcGVlY2gtZGlzcGF0Y2hlci9PcmNhL3ZvaWNlcyBhbmQgYSB3aW5k
b3cgbWFuYWdlciBvbiBvbmNlIHRoZSBzeXN0ZW0KPiA+Pj4+Pj4+PiB3YXMKPiA+Pj4+Pj4+PiBp
bnN0YWxsZWQuCj4gPj4+Pj4+Pj4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IEplbnV4IGhhcyBuZXZl
ciByZWFsbHkgd29ya2VkIGZvciBtZSBvbiBhIFZNIG9yIGJhcmUgbWV0YWwgYXQgYWxsLAo+ID4+
Pj4+Pj4+IHdoZXJlYXMKPiA+Pj4+Pj4+PiB0aGUgb2ZmaWNpYWwgYXJjaCBJU08gaXMgd29ya2lu
ZyByYXRoZXIgd2VsbCwgYW5kIEkgZHVubm8gaWYgdGhlCj4gPj4+Pj4+Pj4gQXJjaGl0ZWN0Cj4g
Pj4+Pj4+Pj4gZWRpdGlvbiBpcyAzNi82NCBiaXQgb3IgMzJiaXQgb25seSBvciA2NGJpdCBvbmx5
LiBBZG1pdHRlZGx5LCBJJ3ZlCj4gPj4+Pj4+Pj4gZ290IGEKPiA+Pj4+Pj4+PiA2NGJpdCBVRUZJ
IHN5c3RlbSBzbyB0aGUgb2ZmaWNpYWwgSVNvIHdvcmtzIGZsYXdsZXNzbHkgb24gaXQgaG93ZXZl
ciwKPiA+Pj4+Pj4+PiBidXQKPiA+Pj4+Pj4+PiBZTU1WIG9uIHRoYXQgb25lWWVzLCBidXQgeW91
IHByb2JhYmx5IGRvbid0IHdhbnQgdG8gaGVhciBpdCBpZiB5b3UKPiA+Pj4+Pj4+PiBhcmUgc2V0
Cj4gPj4+Pj4+Pj4gb24gdXNpbmcgSmVudXggaG93ZXZlci4KPiA+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+
IE9uIDEyLzE0LzIxIDA5OjE4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdy
b3RlOgo+ID4+Pj4+Pj4+PiBIaSBhbGwsCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IEkgZGVjaWRl
ZCB0byBnaXZlIEplbnV4IGFub3RoZXIgZ28sIGxhc3QgdGltZSwgbm8gbWF0dGVyIHdoYXQgSQo+
ID4+Pj4+Pj4+PiB0cmllZCwgSQo+ID4+Pj4+Pj4+PiBjb3VsZG4ndCBnZXQgb3JjYSB0byBjb21l
IG9uIGFmdGVyIGxvZ2dpbmcgaW4gdG8gdGhlIHN5c3RlbS4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+
Pj4gRG9lcyBhbnlvbmUgaGF2ZSBhbnkgYWR2aWNlPwo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBB
bHNvLCBpZiB0aGlzIGRvZXNuJ3Qgd29yayBvdXQsIGlzIHRoZXJlIGEgZ3VpZGUgZm9yIGRvaW5n
IGEgTWFuamFybwo+ID4+Pj4+Pj4+PiBhcmNoaXRlY3QgaW5zdGFsbD8gIk1hbmphcm8gVGFsa2lu
ZyIgZ290IHVwZGF0ZWQgYSBsaXR0bGUgd2hpbGUgYWdvLAo+ID4+Pj4+Pj4+PiBhbmQKPiA+Pj4+
Pj4+Pj4gaWYsIGFzIEkgc2FpZCwgSmVudXggZG9lc24ndCB3b3JrIG91dCwgSSdkIGxpa2UgdG8g
Z2l2ZSB0aGF0IG9uZSBhCj4gPj4+Pj4+Pj4+IGdvLgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBU
aGFua3Mgc28gbG9uZy4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gV2FybSByZWdhcmRzLAo+ID4+
Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBCcmFuZHQgU3RlZW5rYW1wCj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+
Pj4+IFNlbnQgZnJvbSBteSBNYWNCb29rIEFpcgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBDb250
YWN0Ogo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBQaG9uZTogKzI3ICgwKTYwIDUyNSA5MTgxIDx0
ZWw6Ly8rMjc2MDUyNTkxODE+Cj4gPj4+Pj4+Pj4+Cj4gPj4+Pj4+Pj4+IEVtYWlsOiBicmFuZHQu
c3RlZW5rYW1wQGdtYWlsLmNvbQo+ID4+Pj4+Pj4+PiA8bWFpbHRvOmJyYW5kdC5zdGVlbmthbXBA
Z21haWwuY29tPgo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+PiBUd2l0dGVyOiBAYnJhbmR0c3RlZW5r
YW1wIDxodHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPiA+Pj4+Pj4+Pj4K
PiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4KPiA+Pj4+Pj4+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4+Pj4+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+Pj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+
Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+ID4+Pj4+Pj4+Pgo+ID4+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+ID4+Pj4+Pj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pj4+Cj4g
Pj4+Pj4+Cj4gPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+ID4+Pj4+PiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4+Pgo+ID4+Pj4KPiA+Pj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPj4+PiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiA+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+Pj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiA+Pj4KPiA+
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+Pj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiA+
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+ID4+Cj4gPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPiA+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+PiBCbGludXgtbGlzdEByZWRoYXQu
Y29tCj4gPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo+ID4KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiA+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiA+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

