Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C0D5F55C9
	for <lists+blinux-list@lfdr.de>; Wed,  5 Oct 2022 15:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1664977591;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=olKsi453WtcB8Ue2X3XD5jgVMjwPww2WlW/x+RCoYtk=;
	b=BsdcLRsR1l0k0m8d5dQ6Au4wpz/y+YUC0XiMNGmiDTH6bhK8tLzHl8lVXFLf7pQA8PivWH
	S3Vi2ZV+VqID7dLmeyWA55+dPt/gUnWo/IaCtOwWY1OYgpqPEzMhfmjNE+2mTlhXqculJ3
	qP+Op7KzOm2d0soOPgMMuROvYCcpa1k=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-489-pX3BVck3M4WAUkriCuyqvg-1; Wed, 05 Oct 2022 09:46:27 -0400
X-MC-Unique: pX3BVck3M4WAUkriCuyqvg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B2BF329DD9B2;
	Wed,  5 Oct 2022 13:46:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 97FDA492B05;
	Wed,  5 Oct 2022 13:46:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4AAA11947BAC;
	Wed,  5 Oct 2022 13:46:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Oct 2022 09:37:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: tdsr
To: blinux-list@redhat.com
References: <mailman.5306.1664889720.6075.blinux-list@redhat.com>
 <mailman.5193.1664891202.6080.blinux-list@redhat.com>
 <mailman.5272.1664915489.6083.blinux-list@redhat.com>
 <mailman.5680.1664947080.6075.blinux-list@redhat.com>
In-Reply-To: <mailman.5680.1664947080.6075.blinux-list@redhat.com>
Message-ID: <mailman.5502.1664977583.6083.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SWYgJ2Jhc2gnIGlzIHlvdXIgbG9naW4gc2hlbGwsIHRyeSBhZGRpbmcgdGhlIFREU1Igc3RhcnR1
cCBjb21tYW5kIHRvIAouYmFzaF9sb2dpbiBpbiB5b3VyIGhvbWUgZGlyZWN0b3J5LsKgIFRoYXQg
c2hvdWxkIGF2b2lkIHRoZSBwcm9ibGVtcyBUaW0gCmluZGljYXRlZCB3aGVuIGEgc3Vic2hlbGwg
aXMgaW52b2tlZC4KCllvdSBtYXkgaGF2ZSB0byBjcmVhdGUgdGhhdCBmaWxlIGlmIGl0IGRvZXNu
J3QgZXhpc3QuwqAgSXQgaXMgZG9jdW1lbnRlZCAKaW4gdGhlICdiYXNoJyBtYW51YWwgcGFnZS4K
CgpPbiAxMC81LzIwMjIgMToxNyBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPiBPciBtaWdodCBpdCBiZSBlYXNpZXIgdG8gaW5zdGFsbCBlc3BlYWt1cCwgb3Ig
aW5zdGFsbCBGZW5yaXI/Cj4gSSB3ZWxjb21lIGFueW9uZSdzIGlkZWFzLgo+Cj4+IE9uIE9jdCA0
LCAyMDIyLCBhdCAxNTozMSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8Ymxp
bnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4+Cj4+IE1heWJlIGJldHRlciB0byBrZWVwIGxv
Z2dpbmcgaW4sIGdvIHRvIGNkIHRkc3IsCj4+IHRoZW4gdHlwZQo+PiAuL3Rkc3IKPj4gY2QgLi4K
Pj4gYXMgSSBhbHJlYWR5IGRvLgo+PiBXaGF0IHlvdSBoYWQgd3JpdHRlbiBpcyBmYXIgdG9vIGFk
dmFuY2VkIGZvciBtZSwgYnV0IHRoYW5rIHlvdS4KPj4KPj4+IE9uIE9jdCA0LCAyMDIyLCBhdCAw
ODo0NiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4+Pgo+Pj4gVGltIGhlcmUuICBJdCdzIGEgbGl0dGxlIHRyaWNreSBi
ZWNhdXNlLCB3aXRob3V0IGFkZGl0aW9uYWwKPj4+IHByZWNhdXRpb25zLCB5b3Ugb3BlbiBhIHNo
ZWxsIHdoaWNoIGxhdW5jaGVzIHRkc3IsIHdoaWNoIG9wZW5zIGEKPj4+IHNoZWxsIGluc2lkZSBv
ZiBpdCwgd2hpY2ggbGF1bmNoZXMgdGRzciwgd2hpY2ggb3BlbnMgYSBzaGVsbAo+Pj4gd2hpY2gu
Li55b3UgZ2V0IHRoZSBpZGVhLgo+Pj4KPj4+IFNvIHRoZXJlIG5lZWRzIHRvIGJlIGEgd2F5IGZv
ciBhIHNoZWxsIHRvIGRldGVybWluZSBpZiBpdCdzIGFscmVhZHkKPj4+IGluc2lkZSBhIHJ1bm5p
bmcgc2Vzc2lvbiBvZiB0ZHNyLiAgVGhpcyBzb3J0IG9mIHRoaW5nIGlzIHVzdWFsbHkKPj4+IGRv
bmUgdGhyb3VnaCBzZXR0aW5nIGFuIGVudmlyb25tZW50IHZhcmlhYmxlLiAgRm9yIGV4YW1wbGUs
IEkndmUKPj4+IGRvbmUgc2ltaWxhcmx5IHdpdGggInRtdXgiLCBzbyBJIGhhdmUgYSBjaGVjayBp
biBteSBzdGFydHVwIGZpbGUKPj4+IChlLmcuIG15IH4vLmJhc2hyYykgdGhhdCB0ZXN0cwo+Pj4K
Pj4+IFsgLXogIiRUTVVYIiBdICYmIHRtdXgKPj4+Cj4+PiBTbyBmaXJzdCB5b3UnZCB3YW50IHRv
IHNlZSBpZiB0ZHNyIHNldHMgYW4gZW52aXJvbm1lbnQgdmFyaWFibGUuCj4+PiBUaGUgZG9jdW1l
bnRhdGlvbiBtaWdodCBkZXRhaWwgdGhpcywgYnV0IGlmIG5vdCwgeW91IGNhbiBkdW1wIHRoZQo+
Pj4gZW52aXJvbm1lbnQgdG8gYSBmaWxlIGJlZm9yZSBydW5uaW5nIHRkc3IsIHRoZW4gcnVuIHRk
c3IsIHRoZW4gZHVtcAo+Pj4gdGhlIGVudmlyb25tZW50IHRvIGFub3RoZXIgZmlsZSBhbmQgY29t
cGFyZSB0aGVtLCBsaWtlCj4+Pgo+Pj4gJCBlbnYgfCBzb3J0ID4gYQo+Pj4gJCB0ZHNyCj4+PiAo
dGRzcikkIGVudiB8IHNvcnQgPiBiCj4+PiAodGRzcikkIGNvbW0gLTEzIGEgYgo+Pj4KPj4+IEhv
cGVmdWxseSB0aGlzIHdpbGwgc2hvdyBhIHNldHRpbmcgc29tZXRoaW5nIGxpa2UgYSAiJFREU1Ii
IHZhcmlhYmxlCj4+PiB0aGF0IHlvdSBjYW4gY2hlY2suICBUaGVuIHlvdXIgfi8uYmFzaHJjIChv
ciB3aGF0ZXZlciB5b3VyIHN0YXJ0dXAKPj4+IGZpbGUgaXMpIGNhbiBlbmQgd2l0aCBzb21ldGhp
bmcgbGlrZQo+Pj4KPj4+IFsgLXogIiRURFNSIiBdICYmIHRkc3IKPj4+Cj4+PiBCZWNhdXNlIHRo
aXMgY2FuIGdvIHVuZm9ydHVuYXRlbHkgc2lkZXdheXMsIEkgcmVjb21tZW5kIGhhdmluZyBvbmUK
Pj4+IHdpbmRvdy9jb25zb2xlIG9wZW4sIGVkaXRpbmcgeW91ciB+Ly5iYXNocmMgYW5kIHRoZW4g
b3BlbiBhICpuZXcqCj4+PiB3aW5kb3cgKG9yIGxvZyBpbiBhdCBhbm90aGVyIGNvbnNvbGUpIHRv
IHRlc3QgaXQuICBJZiBhbGwgZ29lcwo+Pj4gcmlnaHQsIHlheS4gIElmIHRoaW5ncyBnbyBzaWRl
d2F5cywgeW91IGNhbiBxdWlja2x5IGZsaXAgYmFjayB0bwo+Pj4gdGhlIGZpcnN0IHdpbmRvdy9j
b25zb2xlLCByZW1vdmUgdGhhdCBsaW5lIGZyb20geW91ciB+Ly5iYXNocmMsIGFuZAo+Pj4gKHJl
KXNhdmUgaXQuICBUaGlzIHNhdmVzIHlvdSBhIExPVCBvZiBoYXNzbGUgaWYgeW91IGFjY2lkZW50
YWxseQo+Pj4gY3JlYXRlIGEgbG9vcCBsaWtlIGRlc2NyaWJlZCBhdCB0aGUgdG9wIG9mIHRoaXMg
ZW1haWwuCj4+Pgo+Pj4gLVRpbQo+Pj4KPj4+IE9uIDIwMjItMTAtMDQgMDg6MjEsIExpbnV4IGZv
ciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Pj4gSSBoYXZlIGZlZG9yYSAzNSwg
YW5kIHdoaWxlIGluIHRoZSBzaGVsbCBJIHVzZSB0ZHNyIGZvciBzY3JlZW4tcmVhZGVyLgo+Pj4+
IFRvIHN0YXJ0IGl0LCBvbmUgbXVzdCB1c2UgZG90IHNsYXNoIHRkc3IuCj4+Pj4gSXMgdGhlcmUg
YSB3YXkgdG8gaGF2ZSB0aGlzIHByb2dyYW0gc3RhcnQgd2hlbmV2ZXIgbG9nZ2luZyBpbiBhdCBz
aGVsbD8KPj4+Pgo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3QKPj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJl
ZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNv
bQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0
bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

