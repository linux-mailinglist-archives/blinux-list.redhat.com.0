Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 889F824C2ED
	for <lists+blinux-list@lfdr.de>; Thu, 20 Aug 2020 18:07:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1597939624;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2/fd6b65u4hFUiyGwzpFbjen2kA99h4VtiLx2tYJwVo=;
	b=XMR5SmDBEsiJMhE2EQ7GVGb9/oDHx+s9+GYlrtxJMhZ9uPNfxGqrUsggZosez8ZhhIqS8G
	Rl1MMmrU87tnh8iqs+cHp+GzQJ2e/OYwsyzwYMsOIvrjCWTRYjmhQ8e/iisOv2Xcexoc5R
	nZ/YwTUlpJ+PNZFvTx7B9XrkIOq1PaY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-310-14ilJ8L9NQGK85jtxcc72w-1; Thu, 20 Aug 2020 12:07:01 -0400
X-MC-Unique: 14ilJ8L9NQGK85jtxcc72w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B12E01005E71;
	Thu, 20 Aug 2020 16:06:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 24F5010098A7;
	Thu, 20 Aug 2020 16:06:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5DD17662B3;
	Thu, 20 Aug 2020 16:06:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07KG6au0018047 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Aug 2020 12:06:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4A88C205F3A1; Thu, 20 Aug 2020 16:06:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE282201E6AC
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:06:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D57089CD41
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 16:06:32 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.86.150])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-213-avcaGT9APeqQfKWDWMkITw-1; Thu, 20 Aug 2020 12:06:27 -0400
X-MC-Unique: avcaGT9APeqQfKWDWMkITw-1
X-SimpleLogin-Client-IP: 172.17.0.5
Received: from [172.17.0.5] (unknown [172.17.0.5])
	by mx1.simplelogin.co (Postfix) with ESMTP id 43A727AE8B
	for <blinux-list@redhat.com>; Thu, 20 Aug 2020 15:59:52 +0000 (UTC)
Date: Thu, 20 Aug 2020 17:59:44 +0200 (CEST)
Message-ID: <MFBaDor--3-2@tutanota.com>
Subject: Accessible Distros for a beginner?
MIME-Version: 1.0
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCkkgYW0gbmV3IHRvIHRoaXMgbWFpbGluZ2xpc3QgYW5kIG5ldyB0byBMaW51eC4gSSBoYXZl
IGJlZW4gdXNpbmcgV2luZG93cyBmb3IgeWVhcnMgYnV0IG5vdyBJIHdhbnQgdG8gc3dpdGNoIGlu
dG8gYSBmcmVlIG9wZW4gc291cmNlIHNvZnR3YXJlIExpbnV4IGVudmlyb25tZW50LiBBZnRlciBx
dWl0ZSBhIHdoaWxlIG9mIHJlc2VhcmNoLCBJIGFtIGZpbmRpbmcgcGxlbnR5IG9mIGdlbmVyYWwg
aW5mb3JtYXRpb24gb24gRGlzdHJvcyBieSBzaWdodGVkIExpbnV4IHVzZXJzLCBidXQgbm90IGEg
bG90IG9mIGN1cnJlbnQgaW5mbyBmcm9tIGJsaW5kIExpbnV4IHVzZXJzLiBTbyBJJ20gc2VuZGlu
ZyB0aGlzIGluIGhvcGVzIHRvIGdldCBzb21lIGlucHV0IGZyb20gYW55IGJsaW5kIExpbnV4IHVz
ZXJzLCBhcyB0byB3aGF0IHlvdSBtaWdodCBzdWdnZXN0IGFzIGFuIGFjY2Vzc2libGUgRGlzdHJv
IGZvciBhIGJlZ2lubmVyLCBlc3BlY2lhbGx5IGlmIGl0IGlzIHNvbWV0aGluZyBvdGhlciB0aGFu
IHN0YW5kYXJkIFVidW50dS4KwqBJIGFtIHBhcnRpY3VsYXJseSBpbnRlcmVzdGVkIGluIFNsaW50
LCBQYXJhYm9sYSwgRGV2dWFuLCBvciBUcmlzcXVlbC4gSSBrbm93IFNsaW50IHdhcyBjcmVhdGVk
IGZvciBibGluZCBMaW51eCB1c2VycyBzbyBJIGFzc3VtZSB0aGF0IGl0IG11c3QgYmUgcXVpdGUg
YWNjZXNzaWJsZSwgYnV0IEkgZG9uJ3Qga25vdyBpZiBpdCBpcyBpbnRlbmRlZCBtb3JlIGZvciBh
ZHZhbmNlZCB1c2Vycywgb3IgaWYgYW55IG9mIHlvdSBzdGFydGVkIG91dCB3aXRoIFNsaW50IGFz
IGEgYmVnaW5uZXI/IEkgYW0gaW50ZXJlc3RlZCBpbiB0aGUgb3RoZXIgRGlzdHJvcyBJIGxpc3Rl
ZCwgYnV0IEkgZG9uJ3Qga25vdyBob3cgYWNjZXNzaWJsZSB0aGV5IGFyZS4gRG8gYW55IG9mIHlv
dSBrbm93IGlmIHRob3NlIERpc3Ryb3MgaGF2ZSBPcmNhIHNwZWFraW5nIGR1cmluZyB0aGUgaW5z
dGFsbGF0aW9uPwpEbyBhbnkgb2YgeW91IGhhdmUgZXhwZXJpZW5jZSB3aXRoIFNsaW50LCBQYXJh
Ym9sYSwgRGV2dWFuLCBvciBUcmlzcXVlbD8gV291bGQgeW91IHJlY29tbWVuZCBlaXRoZXIgb2Yg
dGhlbSBhcyBhIHN0YXJ0IG91dCBEaXN0cm8gZm9yIGEgYmVnaW5uZXI/IE9yIGRvIHlvdSB1c2Ug
YSBkaWZmZXJlbnQgRGlzdHJvIHRoYXQgeW91IGNvdWxkIHN1Z2dlc3Q/CsKgSSBrbm93IHRoYXQg
cGlja2luZyBhIERpc3RybyBpcyBhIHBlcnNvbmFsIGNob2ljZSBhbmQgYXBwYXJlbnRseSBEaXN0
cm9zIGNhbiBoYXZlIHZhcnlpbmcgZGVncmVlcyBvZiBhY2Nlc3NpYmlsaXR5IGZlYXR1cmVzIGFj
Y29yZGluZyB0byBob3cgdGhleSBhcmUgY29uZmlndXJlZC4gQnV0IG15IHVuZGVyc3RhbmRpbmcg
aXMgdGhhdCBzb21lIERpc3Ryb3MgYXJlIG1vcmUgYWNjZXNzaWJsZSBvdXQgb2YgdGhlIGJveCBz
byB0byBzcGVhayB0aGFuIG90aGVycy4KSSBrbm93IHRoYXQgc3RhbmRhcmQgVWJ1bnR1IGlzIG9m
dGVuIHJlY29tbWVuZGVkIGZvciBiZWdpbm5lcnMgZm9yIGl0cyBlYXNlIG9mIHVzZSwgYXQgbGVh
c3QsIGl0IHNlZW1zIHRvIGJlIGEgcG9wdWxhciByZWNvbW1lbmRhdGlvbiBhbW9uZ3N0IHNpZ2h0
ZWQgTGludXggdXNlcnMsIEkgZG9uJ3Qga25vdyBpZiB0aGF0IGlzIGFsc28gdGhlIGNhc2Ugd2l0
aCBibGluZCBMaW51eCB1c2Vycy4gSSByZXNwZWN0IHRob3NlIHdobyBwcmVmZXIgVWJ1bnR1LCBo
b3dldmVyLCBJIGFtIG5vdCBjb21mb3J0YWJsZSB3aXRoIHRoZSBjb3Jwb3JhdGUgY29ubmVjdGlv
biB0byBDYW5vbmljYWwuIEkgYW0gb25seSBpbnRlcmVzdGVkIGluIERpc3Ryb3Mgd2l0aCBhIHN0
cm9uZyBmb2N1cyBvbiBmcmVlZG9tIG9mIG9wZW4gc291cmNlIHNvZnR3YXJlIHdpdGggbm8gY29y
cG9yYXRlIGFmZmlsaWF0aW9ucy4gCkkgYW0gbG9va2luZyBmb3IgYSBzaW1wbGlzdGljIGFuZCBz
dHJlYW1saW5lIERpc3Ryby4gCkFsbCBJIHdhbnQgaXMgYSBEaXN0cm8gdGhhdCB3aWxsIHJ1biBG
aXJlZm94LCBMaWJyZU9mZmljZSwgUHl0aG9uIDMsIGEgdGV4dCBlZGl0b3IsIGFuZCBhIGZpbGUg
bWFuYWdlci4gSWYgSSBjYW4gZmluZCBhIERpc3RybyB0aGF0IHdpbGwgcnVuIHRob3NlIHRoaW5n
cyBhbmQgaXMgYXQgbGVhc3Qgc29tZXdoYXQgYmVnaW5uZXIgZnJpZW5kbHksIEknbGwgYmUgc2V0
LgpJJ2xsIGJlIGtlZXBpbmcgbXkgV2luZG93cyBsYXB0b3AgYW5kIGJ1eWluZyBhIHNlcGFyYXRl
IGxhcHRvcCB3aXRoIGhhcmR3YXJlIHRoYXQgaXMgY29tcGF0aWJsZSB3aXRoIHdoYXRldmVyIERp
c3RybyBJIGNob29zZSwgc28gdGhhdCBJIGNhbiBzd2l0Y2ggb3ZlciB0byBMaW51eCBpbmNyZW1l
bnRhbGx5IGF0IG15IHBhY2UuIFNvIEkgYW0gbm90IGludGVyZXN0ZWQgaW4gZHVhbCBib290IG9y
IFZNLiBJIGFtIGRldGVybWluZWQgdG8gbGVhcm4gTGludXgsIGV2ZW4gaWYgdGhlIGZpcnN0IERp
c3RybyBkb2Vzbid0IHdvcmsgb3V0IHNvIHdlbGwgZm9yIG1lLCB0aGVuIEkgd2lsbCB0cnkgYW5v
dGhlciBvbmUuIFNvIHRvIG1lLCBpdCBpcyB3b3J0aCBoYXZpbmcgYSBkZWRpY2F0ZWQgbGFwdG9w
LgpJJ3ZlIGJlZW4gaW4gY29udGFjdCB3aXRoIGEgbGFwdG9wIG9yZ2FuaXphdGlvbiBzcGVjaWFs
aXppbmcgaW4gTGludXggY29tcGF0aWJsZSBoYXJkd2FyZSBzZXR1cHMsIGFuZCB0aGV5IHdpbGwg
aW5zdGFsbCBhIERpc3RybyBvZiBteSBjaG9pY2UsIG1ha2luZyBzdXJlIHRoZSBhY2Nlc3NpYmls
aXR5IGZlYXR1cmVzIGFyZSBlbmFibGVkLiBJIGNhbiBsZWFybiBob3cgdG8gZG8gaW5zdGFsbGF0
aW9ucyBpbmRlcGVuZGVudGx5IG9uY2UgSSBnYWluIHRoZSBleHBlcmllbmNlIGFuZCBza2lsbHMg
b3ZlciB0aW1lLiBCdXQgZm9yIG5vdyBJIGp1c3Qgd2FudCB0byBzdGFydCBzb21ld2hlcmUsIHdp
dGggc29tZXRoaW5nIHRoYXQgaXMgYXMgYWNjZXNzaWJsZSBhcyBwb3NzaWJsZSBvdXQgb2YgdGhl
IGJveCBhbmQgdGhleSBjYW4gaW5zdGFsbCBpdCBmb3IgbWUgdGhlIGZpcnN0IHRpbWUgYXJvdW5k
LgrCoEZyb20gd2hhdCBJIGhhdmUgcmVhZCBvbmxpbmUsIHRoZXJlIGlzIG9mdGVuIGEgc3RlZXAg
bGVhcm5pbmcgY3VydmUgd2hlbiBhZGp1c3RpbmcgZnJvbSBhIFdpbmRvd3MgZW52aXJvbm1lbnQg
dG8gYSBMaW51eCBlbnZpcm9ubWVudC4gV2hlcmVhcyBXaW5kb3dzIGp1c3QgY29tZXMgd2l0aCBt
b3N0IHNvZnR3YXJlIHByZWNvbmZpZ3VyZWQgb3V0IG9mIHRoZSBib3gsIExpbnV4IGlzIGN1c3Rv
bWl6YWJsZSBzbyBzb21lIGJlZ2lubmVycyBjYW4gaGF2ZSBhIGhhcmQgdGltZSBhZGp1c3Rpbmcg
dG8gaXQuIFNvIEkgYW0gbm90IGV4cGVjdGluZyBMaW51eCB0byBqdXN0IGluc3RhbnRseSB3b3Jr
IG9uZSBodW5kcmVkIHBlcmNlbnQgc2VhbWxlc3NseSwgZXNwZWNpYWxseSB3aGVuIGFkZGluZyBh
Y2Nlc3NpYmlsaXR5IGZlYXR1cmVzIGludG8gdGhlIGVxdWF0aW9uLiBUaGVyZSB3aWxsIHByb2Jh
Ymx5IGJlIHNvbWUgY2hhbGxlbmdlcyBhbG9uZyB0aGUgd2F5LiBCdXQgaXQgc2VlbXMgdGhhdCBz
b21lIERpc3Ryb3MgYXJlIG1vcmUgc3RyZWFtbGluZSwgbWluaW1hbGlzdGljLCBhbmQgYmVnaW5u
ZXIgZnJpZW5kbHkgdGhhbiBvdGhlcnMuIEkganVzdCBkb24ndCB3YW50IHRvIHVua25vd2luZ2x5
IHBpY2sgdGhlIG1vc3QgZGF1bnRpbmcgRGlzdHJvIHRoYXQgTGludXggaGFzIHRvIG9mZmVyIGxv
bC4gCsKgSSB3YW50IHNvbWV0aGluZyB3aGVyZSB0aGUgaW5zdGFsbGF0aW9uIHBhY2thZ2UgYW5k
IGJvb3QgcHJvY2VzcyBpcyBhY2Nlc3NpYmxlIHNvIHRoYXQgd2hlbiBJIHBhdGNoIGl0IGluIHRo
ZSBmdXR1cmUsIG9yIGV2ZXIgbmVlZCB0byBkbyBhIHJlaW5zdGFsbCwgSSB3aWxsIGJlIGFibGUg
dG8gZG8gdGhhdCBpbmRlcGVuZGVudGx5LgpJIHdhbnQgc29tZXRoaW5nIHdoZXJlIE9yY2Egc3Bl
YWtzIGNvbnNpc3RlbnRseSBpbiBlc3NlbnRpYWwgYXBwcyBsaWtlIEZpcmVmb3gsIGFuZCBhbHNv
IGhhcyBnb29kIGJyYWlsbGUgb3V0cHV0IGFzIEkgd2lsbCBldmVudHVhbGx5IGNvbm5lY3QgaXQg
dG8gYSBicmFpbGxlIGRpc3BsYXkgYXQgc29tZSBwb2ludC4KRG8gYW55IG9mIHlvdSB1c2UgU2xp
bnQsIFBhcmFib2xhLCBEZXZ1YW4sIG9yIFRyaXNxdWVsPwpQZXJoYXBzIHlvdSBwcmVmZXIgb3Ro
ZXIgRGlzdHJvcyB0aGF0IEkgaGF2bid0IGhlYXJkIG9mIHlldC4gSSBhbSBvcGVuIHRvIGFsbCBz
dWdnZXN0aW9ucyBmb3IgYW55dGhpbmcgb3RoZXIgdGhhbiBzdGFuZGFyZCBVYnVudHUuClRoYW5r
cyBpbiBhZHZhbmNlIGZvciBhbnkgaW5mbyB5b3UgY291bGQgc2hhcmUgd2l0aCBhIGJlZ2lubmVy
IGxvb2tpbmcgZm9yIGEgRGlzdHJvIHdpdGggYW4gYWNjZXNzaWJsZSBpbnN0YWxsIGFuZCBib290
IHByb2Nlc3MuClJlZ2FyZHMsClNMCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQu
Y29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

