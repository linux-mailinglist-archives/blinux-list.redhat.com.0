Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ABD5F6E50
	for <lists+blinux-list@lfdr.de>; Thu,  6 Oct 2022 21:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665085248;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=AxWmqyPKx84+q6nxebYURtAGGIJfHQnOQB5zOY8TTqI=;
	b=FZpORwElgQ1CVzc0/JhYQuQZnW4v4RG7vChodR+JwtI+L3cs1pUiCzZMWNNs/PrkQi7aoK
	b3TJsw5tg/DgMv72s+1lEXKjcFzwqjz+asUQnAcjw2reXP9chTcT1cSPcRJ+zhzSamBz4+
	uJHpxIdldS9AFdErsLJAB07E2zICUdg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-122-C-l7EvXjOG-b8MeGnWNyRg-1; Thu, 06 Oct 2022 15:40:44 -0400
X-MC-Unique: C-l7EvXjOG-b8MeGnWNyRg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87BDD3C3050C;
	Thu,  6 Oct 2022 19:40:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 758B2111CB9A;
	Thu,  6 Oct 2022 19:40:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D40641946A42;
	Thu,  6 Oct 2022 19:40:41 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: tdsr
Date: Thu, 6 Oct 2022 14:40:36 -0500
References: <mailman.6158.1665083042.6081.blinux-list@redhat.com>
 <mailman.6381.1665083367.6082.blinux-list@redhat.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <mailman.6381.1665083367.6082.blinux-list@redhat.com>
Message-ID: <mailman.6388.1665085240.6082.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzLCB3aWxsIHRyeSB0aGF0LgoKPiBPbiBPY3QgNiwgMjAyMiwgYXQgMTQ6MDksIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdy
b3RlOgo+IAo+IFRoZSAuLyBjb21tYW5kIGlzIG5vdCBuZWNlc3Nhcnkgc2luY2UgdGhlIH4vdGRz
ci90ZHNyIHJ1bnMgdGhlIHByb2dyYW0uCj4gCj4gCj4gUnlhbiBNYW5uCj4gQ2VydGlmaWVkIEFz
c2lzdGl2ZSBUZWNobm9sb2d5IEluc3RydWN0aW9uYWwgU3BlY2lhbGlzdAo+IHJtYW5uMDU4MUBn
bWFpbC5jb20KPiAzODYtMzgzLTUxNzUKPiAKPiAKPj4gT24gT2N0IDYsIDIwMjIsIGF0IDM6MDQg
UE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhh
dC5jb20+IHdyb3RlOgo+PiAKPj4g77u/VGhlbiB3aGF0IGFib3V0IHRoZSBjb21tYW5kCj4+IC4v
dGRzcgo+PiBvciBkb2VzIHRoYXQgeW91IHN1Z2dlc3QgdGFrZSBjYXJlIG9mIHRoZSBkb3Qgc2xh
c2ggY29tbWFuZD8KPj4gCj4+PiBPbiBPY3QgNiwgMjAyMiwgYXQgMTE6MTUsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+
Pj4gCj4+PiBUeXBpbmcgfi90ZHNyL3Rkc3IgZ2l2ZXMgdGhlIGRpcmVjdCBwYXRoIHRvIHRoZSBm
aWxlLiAgVGhhdCB3YXkgdGhlIHN5c3RlbSBrbm93cyB3aGVyZSB0ZHNyIGlzIHdpdGhvdXQgeW91
IG5lZWRpbmcgdG8gY2QgdG8gdGhlIGRpcmVjdG9yeS4KPj4+IAo+Pj4gCj4+PiBSeWFuIE1hbm4K
Pj4+IENlcnRpZmllZCBBc3Npc3RpdmUgVGVjaG5vbG9neSBJbnN0cnVjdGlvbmFsIFNwZWNpYWxp
c3QKPj4+IHJtYW5uMDU4MUBnbWFpbC5jb20KPj4+IDM4Ni0zODMtNTE3NQo+Pj4gCj4+PiAKPj4+
Pj4gT24gT2N0IDYsIDIwMjIsIGF0IDEyOjEyIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+PiAKPj4+PiDvu79T
aW5jZSB0ZHNyIGlzIHN0YXJ0ZWQgYnkgdXNpbmcKPj4+PiAuL3Rkc3IKPj4+PiBmcm9tIHdpdGhp
bgo+Pj4+IC90ZHNyLCBob3cgaXMgdGhpcyBkb25lIHVzaW5nCj4+Pj4gfi90ZHNyL3Rkc3IKPj4+
PiAKPj4+Pj4gT24gT2N0IDYsIDIwMjIsIGF0IDEwOjQ4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPj4+Pj4gCj4+Pj4+
IFlvdSBjYW4gdHJ5IGl0IHRoZSB3YXkgeW91IHNob3csIG9yIGp1c3Qgc3BlY2lmeSB0aGUgcGF0
aCB0byB0aGUgJ3Rkc3InIGV4ZWN1dGFibGUgbGlrZSAnfi90ZHNyL3Rkc3InIG9yICcvaG9tZS94
eHh4eC90ZHNyL3Rkc3InIGluc3RlYWQgb2YgJ2NkJyB0byB0aGUgZGlyZWN0b3J5LiAgT25jZSB5
b3UgY3JlYXRlIHRoZSBmaWxlLCBsb2cgb3V0IGFuZCBiYWNrIGluIHRvIHRlc3QgaWYgdGhlIFRE
U1Igc3RhcnRzIGF1dG9tYXRpY2FsbHkuCj4+Pj4+IAo+Pj4+PiAKPj4+Pj4+IE9uIDEwLzYvMjAy
MiA5OjUzIEFNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+
Pj4gQW5kIGRvIHRoYXQgdXNpbmcKPj4+Pj4+IG5hbm8gLmJhc2hfbG9naW4KPj4+Pj4+IGFuZCB3
cml0ZQo+Pj4+Pj4gY2QgdGRzcgo+Pj4+Pj4gLi90ZHNyCj4+Pj4+PiBjZCAuLgo+Pj4+Pj4gSXMg
dGhhdCBpdD8KPj4+Pj4+IAo+Pj4+Pj4+IE9uIE9jdCA2LCAyMDIyLCBhdCAwODo0OCwgTGludXgg
Zm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3Jv
dGU6Cj4+Pj4+Pj4gCj4+Pj4+Pj4gSnVzdCBjcmVhdGUgdGhlIGZpbGUuCj4+Pj4+Pj4gCj4+Pj4+
Pj4gT24gMTAvNS8yMDIyIDU6MzEgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4+Pj4+Pj4+IFVzaW5nIGxzIC5iYXNoX2xvZ2luCj4+Pj4+Pj4+IGFuZCBzdWRv
IGxzIC5iYXNoX2xvZ2luCj4+Pj4+Pj4+IEkgYW0gbm90IGZpbmRpbmcgdGhhdCBmaWxlLgo+Pj4+
Pj4+PiBJIGFtIGluIHRoZSBob21lIGRpcmVjdG9yeS4KPj4+Pj4+Pj4gQW0gSSBkb2luZyBzb21l
dGhpbmcgd3Jvbmc/Cj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4gT24gT2N0IDUsIDIwMjIsIGF0IDA4OjM3
LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKPj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4gSWYgJ2Jhc2gnIGlzIHlvdXIgbG9naW4g
c2hlbGwsIHRyeSBhZGRpbmcgdGhlIFREU1Igc3RhcnR1cCBjb21tYW5kIHRvIC5iYXNoX2xvZ2lu
IGluIHlvdXIgaG9tZSBkaXJlY3RvcnkuICBUaGF0IHNob3VsZCBhdm9pZCB0aGUgcHJvYmxlbXMg
VGltIGluZGljYXRlZCB3aGVuIGEgc3Vic2hlbGwgaXMgaW52b2tlZC4KPj4+Pj4+Pj4+IAo+Pj4+
Pj4+Pj4gWW91IG1heSBoYXZlIHRvIGNyZWF0ZSB0aGF0IGZpbGUgaWYgaXQgZG9lc24ndCBleGlz
dC4gIEl0IGlzIGRvY3VtZW50ZWQgaW4gdGhlICdiYXNoJyBtYW51YWwgcGFnZS4KPj4+Pj4+Pj4+
IAo+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+PiBPbiAxMC81LzIwMjIgMToxNyBBTSwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+Pj4+PiBPciBtaWdodCBpdCBiZSBl
YXNpZXIgdG8gaW5zdGFsbCBlc3BlYWt1cCwgb3IgaW5zdGFsbCBGZW5yaXI/Cj4+Pj4+Pj4+Pj4g
SSB3ZWxjb21lIGFueW9uZSdzIGlkZWFzLgo+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+PiBPbiBPY3Qg
NCwgMjAyMiwgYXQgMTU6MzEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJs
aW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4gTWF5
YmUgYmV0dGVyIHRvIGtlZXAgbG9nZ2luZyBpbiwgZ28gdG8gY2QgdGRzciwKPj4+Pj4+Pj4+Pj4g
dGhlbiB0eXBlCj4+Pj4+Pj4+Pj4+IC4vdGRzcgo+Pj4+Pj4+Pj4+PiBjZCAuLgo+Pj4+Pj4+Pj4+
PiBhcyBJIGFscmVhZHkgZG8uCj4+Pj4+Pj4+Pj4+IFdoYXQgeW91IGhhZCB3cml0dGVuIGlzIGZh
ciB0b28gYWR2YW5jZWQgZm9yIG1lLCBidXQgdGhhbmsgeW91Lgo+Pj4+Pj4+Pj4+PiAKPj4+Pj4+
Pj4+Pj4+IE9uIE9jdCA0LCAyMDIyLCBhdCAwODo0NiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Pj4+Pj4+Pj4+PiAK
Pj4+Pj4+Pj4+Pj4+IFRpbSBoZXJlLiAgSXQncyBhIGxpdHRsZSB0cmlja3kgYmVjYXVzZSwgd2l0
aG91dCBhZGRpdGlvbmFsCj4+Pj4+Pj4+Pj4+PiBwcmVjYXV0aW9ucywgeW91IG9wZW4gYSBzaGVs
bCB3aGljaCBsYXVuY2hlcyB0ZHNyLCB3aGljaCBvcGVucyBhCj4+Pj4+Pj4+Pj4+PiBzaGVsbCBp
bnNpZGUgb2YgaXQsIHdoaWNoIGxhdW5jaGVzIHRkc3IsIHdoaWNoIG9wZW5zIGEgc2hlbGwKPj4+
Pj4+Pj4+Pj4+IHdoaWNoLi4ueW91IGdldCB0aGUgaWRlYS4KPj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+
Pj4+Pj4gU28gdGhlcmUgbmVlZHMgdG8gYmUgYSB3YXkgZm9yIGEgc2hlbGwgdG8gZGV0ZXJtaW5l
IGlmIGl0J3MgYWxyZWFkeQo+Pj4+Pj4+Pj4+Pj4gaW5zaWRlIGEgcnVubmluZyBzZXNzaW9uIG9m
IHRkc3IuICBUaGlzIHNvcnQgb2YgdGhpbmcgaXMgdXN1YWxseQo+Pj4+Pj4+Pj4+Pj4gZG9uZSB0
aHJvdWdoIHNldHRpbmcgYW4gZW52aXJvbm1lbnQgdmFyaWFibGUuICBGb3IgZXhhbXBsZSwgSSd2
ZQo+Pj4+Pj4+Pj4+Pj4gZG9uZSBzaW1pbGFybHkgd2l0aCAidG11eCIsIHNvIEkgaGF2ZSBhIGNo
ZWNrIGluIG15IHN0YXJ0dXAgZmlsZQo+Pj4+Pj4+Pj4+Pj4gKGUuZy4gbXkgfi8uYmFzaHJjKSB0
aGF0IHRlc3RzCj4+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4+IFsgLXogIiRUTVVYIiBdICYmIHRt
dXgKPj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+Pj4gU28gZmlyc3QgeW91J2Qgd2FudCB0byBzZWUg
aWYgdGRzciBzZXRzIGFuIGVudmlyb25tZW50IHZhcmlhYmxlLgo+Pj4+Pj4+Pj4+Pj4gVGhlIGRv
Y3VtZW50YXRpb24gbWlnaHQgZGV0YWlsIHRoaXMsIGJ1dCBpZiBub3QsIHlvdSBjYW4gZHVtcCB0
aGUKPj4+Pj4+Pj4+Pj4+IGVudmlyb25tZW50IHRvIGEgZmlsZSBiZWZvcmUgcnVubmluZyB0ZHNy
LCB0aGVuIHJ1biB0ZHNyLCB0aGVuIGR1bXAKPj4+Pj4+Pj4+Pj4+IHRoZSBlbnZpcm9ubWVudCB0
byBhbm90aGVyIGZpbGUgYW5kIGNvbXBhcmUgdGhlbSwgbGlrZQo+Pj4+Pj4+Pj4+Pj4gCj4+Pj4+
Pj4+Pj4+PiAkIGVudiB8IHNvcnQgPiBhCj4+Pj4+Pj4+Pj4+PiAkIHRkc3IKPj4+Pj4+Pj4+Pj4+
ICh0ZHNyKSQgZW52IHwgc29ydCA+IGIKPj4+Pj4+Pj4+Pj4+ICh0ZHNyKSQgY29tbSAtMTMgYSBi
Cj4+Pj4+Pj4+Pj4+PiAKPj4+Pj4+Pj4+Pj4+IEhvcGVmdWxseSB0aGlzIHdpbGwgc2hvdyBhIHNl
dHRpbmcgc29tZXRoaW5nIGxpa2UgYSAiJFREU1IiIHZhcmlhYmxlCj4+Pj4+Pj4+Pj4+PiB0aGF0
IHlvdSBjYW4gY2hlY2suICBUaGVuIHlvdXIgfi8uYmFzaHJjIChvciB3aGF0ZXZlciB5b3VyIHN0
YXJ0dXAKPj4+Pj4+Pj4+Pj4+IGZpbGUgaXMpIGNhbiBlbmQgd2l0aCBzb21ldGhpbmcgbGlrZQo+
Pj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+PiBbIC16ICIkVERTUiIgXSAmJiB0ZHNyCj4+Pj4+Pj4+
Pj4+PiAKPj4+Pj4+Pj4+Pj4+IEJlY2F1c2UgdGhpcyBjYW4gZ28gdW5mb3J0dW5hdGVseSBzaWRl
d2F5cywgSSByZWNvbW1lbmQgaGF2aW5nIG9uZQo+Pj4+Pj4+Pj4+Pj4gd2luZG93L2NvbnNvbGUg
b3BlbiwgZWRpdGluZyB5b3VyIH4vLmJhc2hyYyBhbmQgdGhlbiBvcGVuIGEgKm5ldyoKPj4+Pj4+
Pj4+Pj4+IHdpbmRvdyAob3IgbG9nIGluIGF0IGFub3RoZXIgY29uc29sZSkgdG8gdGVzdCBpdC4g
IElmIGFsbCBnb2VzCj4+Pj4+Pj4+Pj4+PiByaWdodCwgeWF5LiAgSWYgdGhpbmdzIGdvIHNpZGV3
YXlzLCB5b3UgY2FuIHF1aWNrbHkgZmxpcCBiYWNrIHRvCj4+Pj4+Pj4+Pj4+PiB0aGUgZmlyc3Qg
d2luZG93L2NvbnNvbGUsIHJlbW92ZSB0aGF0IGxpbmUgZnJvbSB5b3VyIH4vLmJhc2hyYywgYW5k
Cj4+Pj4+Pj4+Pj4+PiAocmUpc2F2ZSBpdC4gIFRoaXMgc2F2ZXMgeW91IGEgTE9UIG9mIGhhc3Ns
ZSBpZiB5b3UgYWNjaWRlbnRhbGx5Cj4+Pj4+Pj4+Pj4+PiBjcmVhdGUgYSBsb29wIGxpa2UgZGVz
Y3JpYmVkIGF0IHRoZSB0b3Agb2YgdGhpcyBlbWFpbC4KPj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+Pj4+
Pj4gLVRpbQo+Pj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+PiBPbiAyMDIyLTEwLTA0IDA4OjIxLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4+IEkg
aGF2ZSBmZWRvcmEgMzUsIGFuZCB3aGlsZSBpbiB0aGUgc2hlbGwgSSB1c2UgdGRzciBmb3Igc2Ny
ZWVuLXJlYWRlci4KPj4+Pj4+Pj4+Pj4+PiBUbyBzdGFydCBpdCwgb25lIG11c3QgdXNlIGRvdCBz
bGFzaCB0ZHNyLgo+Pj4+Pj4+Pj4+Pj4+IElzIHRoZXJlIGEgd2F5IHRvIGhhdmUgdGhpcyBwcm9n
cmFtIHN0YXJ0IHdoZW5ldmVyIGxvZ2dpbmcgaW4gYXQgc2hlbGw/Cj4+Pj4+Pj4+Pj4+Pj4gCj4+
Pj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+Pj4+Pj4+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4+IAo+Pj4+Pj4+
Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+
Pj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+Pj4+Pj4+IEJs
aW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pj4+Pj4+Pj4gCj4+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+Pj4+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+Pj4+Pj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+
Pj4+IAo+Pj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+Pj4+Pj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4+Pj4+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+Pj4+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKPj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+Pj4+PiBodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Pj4+Pj4+IAo+Pj4+
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPj4+Pj4+PiAKPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+IEJs
aW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+IAo+Pj4+PiAKPj4+Pj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+Pj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4gaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Pj4+IAo+Pj4+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+Pj4+IGh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+
PiAKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo+PiAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20K
Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBz
Oi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQu
Y29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

