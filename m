Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 797C565E4B6
	for <lists+blinux-list@lfdr.de>; Thu,  5 Jan 2023 05:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672893532;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Le+idV82o7lYlYfC/N+WK3WUmA/SP2F8ceTU90NNeJo=;
	b=GOp0wfZDVAJ8da6yZdnDT7hTOMpGUKGnH/3jGTsrPalzs0j/Az4KMSU49cT0Xv0XaTyCP3
	HlyDPW0IqeatbmB4EL6F9+zHlmI17XMJOVCum10/q+BbEjr9LabOLhLW3HXSsJeK2EatgQ
	V476xFbRG9Ox4pYifZQ0aJmvgTPBj9c=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-61-vheSJJSBMxGyQTCAAjQwbQ-1; Wed, 04 Jan 2023 23:38:47 -0500
X-MC-Unique: vheSJJSBMxGyQTCAAjQwbQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C25D8027F8;
	Thu,  5 Jan 2023 04:38:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 6EB6149BB6A;
	Thu,  5 Jan 2023 04:38:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8565D1946594;
	Thu,  5 Jan 2023 04:38:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 05 Jan 2023 04:38:23 +0000
To: blinux-list@redhat.com
Subject: Re: Java & Orca
In-Reply-To: <mailman.2948.1672861418.2515658.blinux-list@redhat.com>
References: <mailman.2948.1672861418.2515658.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.3082.1672893516.2515682.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gSmFja2llLAoKYXMgb3RoZXJzIGhhdmUgYWxyZWFkeSBtZW50aW9uZWQsIEphdmEgaXMg
YSBnZW5lcmFsLXB1cnBvc2UgcHJvZ3JhbW1pbmcKbGFuZ3VhZ2UsIHNvIHllcywgdGhlIGFjY2Vz
c2liaWxpdHkgaW5oZXJlbnRseSBkZXBlbmRzIG9uIHRoZSB1c2VkIEdVSQpmcmFtZXdvcmsuCgoK
QnV0IEkgYXNzdW1lIHRoZSBxdWVzdGlvbiB3YXMgdGFyZ2V0ZWQgdG8gSmF2YSBhcHBsaWNhdGlv
bnMgbWFraW5nIHVzZQpvZiB0aGUgSmF2YSBBY2Nlc3NpYmlsaXR5IEFQSSwgc2luY2UgdGhlc2Ug
YXJlIHRoZSBuYXRpdmUgSmF2YSBHVUkKZnJhbWV3b3JrcyB3ZSB1c3VhbGx5IGltYWdpbmUgdW5k
ZXIgdGhlIHRlcm0gIkphdmEgYXBwbGljYXRpb24iLgoKClRoaXMgbWF0dGVyIGlzLi4uIGNvbXBs
aWNhdGVkLgoKCkZpcnN0IG9mIGFsbCwgYXMgZmFyIGFzIEkgcmVtZW1iZXIsIEphdmEgQWNjZXNz
aWJpbGl0eSBBUEkgd2FzIG5ldmVyCmFueXdoZXJlIG5lYXIgc3RhYmxlLCBzcGVhayBvZiByZWxp
YWJpbGl0eSwgb24gYW55IHBsYXRmb3JtLgoKQWN0dWFsbHksIGV2ZW4gb24gV2luZG93cywgaXQg
d2FzIGFsd2F5cyBhIGJpdCBvZiBsdWNrIHRvIGdldCB0aGUgSmF2YQpBY2Nlc3NpYmlsaXR5IEJy
aWRnZSBydW5uaW5nIGluIHRoZSBmaXJzdCBwbGFjZS4gU29tZXRpbWVzIGl0IGRpZG4ndAp3b3Jr
IGFsbHRvZ2V0aGVyLCBzb21ldGltZXMganVzdCB0aGUgaW1wbGVtZW50YXRpb24gaW4gdGhlIGNv
bnRyb2wgcGFuZWwKd2FzIGJ1Z2d5LCBJIG5ldmVyIHNhdyBhbnkgY29uc2lzdGVuY3kgYmV0d2Vl
biB0aGUgY29udHJvbHMgaW4gdGhlCmNvbnRyb2wgcGFuZWwgYW5kIHRoZSBDTUQgSkFCIHN3aXRj
aGVyLCBhbmQgZXZlbiBpZiB5b3UgZ290IHRoaW5ncwphY3R1YWxseSBydW5uaW5nLCBpbiB0aGUg
cGFzdCB5b3UgY291bGQgYWxzbyBiZSBzdG9wcGVkIGJlY2F1c2UgTlZEQQp1c2VkIGRpZmZlcmVu
dCBhcmNoaXRlY3R1cmUgdGhhbiBKQUIuCgpJbiB0aGUgb3B0aW1hbCBjYXNlLCBldmVyeXRoaW5n
IHdvcmtlZCBhbmQgeW91IGdvdCBhbiBhY2Nlc3NpYmxlCmludGVyZmFjZS4gQnV0IHRoZSB0ZXJt
IGFjY2Vzc2libGUgaXMgc29tZXdoYXQgcmVsYXRpdmUsIHdoZW4gaXQgY29tZXMKdG8gSmF2YS4K
ClRoZSBjb21wdXRlciBmYW4gaGFzIGJlZW4gYWx3YXlzIHN1ZGRlbmx5IHZlcnkgYWN0aXZlLiBT
Y3JlZW5yZWFkZXIKcmVhY3Rpb25zIGJlY2FtZSBzbG93LCB3b3JraW5nIHdpdGggdGhlIFVJIHdh
cyBhIHBhaW4uCgpUaGluZ3MgbGlrZSBvYmplY3QgbmF2aWdhdGlvbiBkaWRuJ3Qgd29yay4gU2lu
Y2UgZm9jdXMgaGFuZGxpbmcgb2YgdGhlCmZyYW1ld29ya3Mgd2FzIG5vdCBhbHdheXMgb3B0aW1h
bCwgYmVpbmcgdW5hYmxlIHRvIGFjY2VzcyBwYXJ0cyBvZiB0aGUKaW50ZXJmYWNlIHdhcyBub3Ro
aW5nIHJhcmUuCgpZb3UgaGFkIHRvIGJlIGNhcmVmdWwgc3dpdGNoaW5nIGZvY3VzIGZyb20gdGhl
IHdpbmRvdyBhbmQgYmFjaywgaXQgd2FzCnByZXR0eSBjb21tb24gZm9yIHRoZSBhY2Nlc3NpYmls
aXR5IHRvIGp1c3QgZGlzYXBwZWFyIG9uIHRoZSBmbHkuCgpBbmQsIGFub3RoZXIgdmVyeSBjb21t
b24gcHJvYmxlbSwgb2Z0ZW4gZHVyaW5nIHRoZSBzdGFuZGFyZCB0YWIKbmF2aWdhdGlvbiB0aGUg
d2hvbGUgYXBwIHdvdWxkIGp1c3QgY3Jhc2gsIGJlY2F1c2Ugd2h5IG5vdC4KCgpUaGlzIHdhcyB0
aGUgc3RhdGUgb2YgdGhlIGFydCB0d28geWVhcnMgYWdvIG9uIFdpbmRvd3MsIHdoZW4gSSB3YXMg
YQpXaW5kb3dzIHVzZXIuIEknbSBub3Qgc3VyZSBob3cgbXVjaCBoYXZlIHRoaW5ncyBwcm9ncmVz
c2VkIHNpbmNlIHRoZW4sCm1heWJlIHNvbWVvbmUgd2l0aCBhIG1vcmUgcmVjZW50IGV4cGVyaWVu
Y2UgY291bGQgZ2l2ZSB1cyBhIHJlZnJlc2hlci4KCgpFaXRoZXIgd2F5LCB3aGF0IGlzIHRoZSBz
aXR1YXRpb24gb24gTGludXg/IEl0J3Mgc2ltcGxlLCBwcmV0dHkgbXVjaCB0aGUKc2FtZS4KCkl0
IGNhbiBiZSB0cm91Ymxlc29tZSBqdXN0IHRvIGdldCB0aGluZ3Mgd29ya2luZywgSkFCIGlzIGNh
bGxlZCBKYXZhIEFUSwpXcmFwcGVyLCBhbmQgYmFjayBpbiBKYXZhIDgsIGl0IGhhZCB0byBiZSBt
YW51YWxseSBzZXQgdXAgaW4gb3JkZXIgZm9yCnRoZSBhY2Nlc3NpYmlsaXR5IHRvIHdvcmsgYnkg
dHVybmluZyBvbiBmbGFncywgY29weWluZyBhbmQgc3ltbGlua2luZwpsaWJyYXJpZXMgZXRjLgoK
CkkgdGhpbmsgdGhlIHNpdHVhdGlvbiB3YXMgc3VwcG9zZWQgdG8gYmUgaW1wcm92ZWQgaW4gSmF2
YSAxMSwgdGhlCnN0cnVjdHVyZSBoYXMgY2hhbmdlZCwgYW5kIEkgZG8gcmVtZW1iZXIgdGhpbmdz
IGJlaW5nIGFjY2Vzc2libGUgd2l0aG91dAphbnkgc3BlY2lhbCBjb25maWd1cmF0aW9uLgoKCkFu
ZCB5ZXQsIG15IG93biBhcHAgSSBqdXN0IHRyaWVkIGlzIG5vdCBhY2Nlc3NpYmxlLiBXaHk/IElE
Sy4KCgpJdCdzIEphdmEuIEl0J3Mgbm90IHN1cHBvc2VkIHRvIHdvcmsuIDopCgoKU28sIHRvIGFu
c3dlciB0aGUgb3JpZ2luYWwgcXVlc3Rpb24sIGNhbiBKYXZhIGFwcHMgYmUgdXNlZCB3aXRoIE9y
Y2E/CgpJbiB0aGVvcnkgeWVzLCBhbmQgSSd2ZSB1c2VkIGFwcHMgbGlrZSBBbmRyb2lkU3R1ZGlv
IGhlcmUsIHNvIGl0J3MgdHJ1bHkKcG9zc2libGUuCgpCdXQgaW4gcHJhY3RpY2UsIHlvdSBuZWVk
IHRvIGJlIHByZXBhcmVkIGZvciBhIGxvdCBvZiBoYXNzbGUuIEp1c3QgbGlrZQpvbiBXaW5kb3dz
LgoKCkJlc3QgcmVnYXJkcwoKClJhc3Rpc2xhdgoKCkTFiGEgNC4gMS4gMjAyMyBvIDIwOjQzIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gbmFww61zYWwoYSk6Cj4gQ2FuIHByb2dy
YW1zIHdyaXR0ZW4gaW4gSmF2YSBiZSBhY2Nlc3NlZCBieSBPcmNhPyBJZiBzbywgZXhwbGFuYXRp
b25zCj4gd2VsY29tZS4gJiB5b3VyIGVmZm9ydHMgaW4gYWR2YW5jZSBhcmUgZGVmaW5pdGl2ZWx5
IGFwcHJlY2lhdGVkLgo+Cj4gSnVzdCBpbiBjYXNlIHRoZSBsaXN0IG51a2VzIG15IHNpZ25hdHVy
ZSwgSSdtIEphY2tpZSBNY0JyaWRlLiBJIGhhdmUKPiB0aGUgZ3JlYXQgcGxlYXN1cmUgb2Yga25v
d2luZyBzb21lIG9mIHlvdS4KPgo+IC0tCj4gSmFja2llIE1jQnJpZGUKPiBCZSBhIGhlcm8uIEZp
Z2h0IFNjYW1zLiBMZWFybiBob3cgYXQgd3d3LnNjYW05MTEub3JnCj4gQWxzbyBjaGVjayBvdXQg
YnJpZ2h0c3RhcnN3ZWIuY29tICYgbXlzaXRlc2JlZW5oYWNrZWQuY29tCj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QK

