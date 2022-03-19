Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D01E64DE551
	for <lists+blinux-list@lfdr.de>; Sat, 19 Mar 2022 04:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647659945;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6Wmxkec0YYcghcj8BsCQ6gEe0nnW29f0kbKKx9q1qh8=;
	b=QnI0GkG7XcMkcvo6oVuR+2ofRFRGhUKy3cO/5mmVGv/YFki29A32NDXL92Ywut9/mIGeiW
	gfxOSUkMlpteiGL19Cd8DGD0j2M7vpfCishR22jZxjUoLs/Vr0f0on8IP6hglp6Uo3g1Ge
	0Oh87bU64ZcmPTqAPwzn4vrQATIy24Q=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-468-h1xrvNIuMcGdebmbxsR03Q-1; Fri, 18 Mar 2022 23:19:02 -0400
X-MC-Unique: h1xrvNIuMcGdebmbxsR03Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F2263804530;
	Sat, 19 Mar 2022 03:19:00 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 801422026D4C;
	Sat, 19 Mar 2022 03:18:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id B879A1940379;
	Sat, 19 Mar 2022 03:18:53 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
References: <mailman.2712.1647554312.111205.blinux-list@redhat.com>
 <mailman.2790.1647555545.111203.blinux-list@redhat.com>
 <mailman.2906.1647556769.111202.blinux-list@redhat.com>
 <mailman.2934.1647568523.111202.blinux-list@redhat.com>
 <mailman.2943.1647572671.111202.blinux-list@redhat.com>
 <mailman.2983.1647642386.111201.blinux-list@redhat.com>
User-agent: mu4e 1.7.9; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: MP3 Tag editor?
Date: Sat, 19 Mar 2022 05:13:19 +0200
In-reply-to: <mailman.2983.1647642386.111201.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3033.1647659933.111206.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

CkhpLAoKWW91IGhhdmUgdG8gcnVuIHRoYXQgY29tbWFuZCB3aGlsZSB5b3UgYXJlIGluIHRoZSBm
aWxlcyBmb2xkZXIuIFNvIAppZgp5b3UgaGF2ZSB0aGF0IGFydGlzdCBzbGFzaCBhbGJ1bSAgc2xh
c2ggZmlsZXMgc3RydWN0dXJlLCB5b3UgCnNob3VsZCBiZSBpbiB0aGUgZmlsZXMKZGlyZWN0b3J5
IHRvIHJ1biB0aGF0IGNvbW1hbmQuCgoKSXNoZQoKCk9uIEZyaSwgTWFyIDE4LCAyMDIyIGF0IDA2
OjI2ICBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIAo8YmxpbnV4LWxpc3RAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4gSGksCj4KPiBJIGFtIGEgbGl0dGxlIGNvbmZ1c2VkLAo+Cj4gRG8g
SSBuZWVkIHRvIGJlIGluIHRoZSBBcnRpc3QgZm9sZGVyPwo+Cj4gVGhlIHN0cnVjdHVyZSBpcyBh
cnRpc3QgZm9sZGVyIHNsYXNoIGFsYnVtIGZvbGRlciBzbGFzaCBmaWxlcy4KPgo+IGtpZDMtY2xp
PiB0b3RhZyAie2FydGlzdH0ve2FsYnVtfS97dGl0bGV9Igo+Cj4gZ2l2ZXMgbWUgZXJyb3IsCj4K
PiBhcnRpc3QgYWxidW0gdGl0bGUgZG9lcyBub3QgZXhpc3QuCj4KPgo+IHRoYW5rcyBmb3IgeW91
ciBoZWxwLgo+Cj4gUm9iCj4KPiBPbiAzLzE3LzIyIDIyOjQyLCBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pgo+PiBIaSwKPj4KPj4gSW4gYWRkaXRpb24gdG8gd2hh
dCBvdGhlcnMgaGF2ZSBzdWdnZXN0ZWQsIHlvdSBjYW4gdHJ5IGtpZDMuIAo+PiBXaGlsZSBJIGRv
Cj4+IG5vdCBsaWtlIGl0cyBncmFwaGljYWwgaW50ZXJmYWNlLCBpdHMgY29tbWFuZCBsaW5lIHZl
cnNpb24gCj4+IGludm9rZWQgdmlhCj4+IHRoZSBraWQzLWNsaSBpcyB3aGF0IEkgbm9ybWFsbHkg
dXNlIHRvIHRhZyBteSBzb3VuZCBmaWxlcywgYmUgCj4+IHRoZXkgbXAzLAo+PiBtNGEsIG9nZyBv
ciBldmVuIHdtYSBmb3JtYXRzLgo+Pgo+Pgo+PiBGb3IgaW5zdGFuY2UsIGluIGEgZGlyZWN0b3J5
IHdpdGggcGF0aHMgbGlrZSAKPj4gfi9tdXNpYy9hcnRpc3QvYWxidW0sCj4+IHlvdSBjYW4gdGFn
IHlvdXIgZmlsZXMKPj4gbGlrZSB0aGlzOgo+Pgo+PiAkIGtpZDMtY2xpCj4+IHRvIGludm9rZcKg
IGl0IGluIGludGVyYWN0aXZlIG1vZGUuIFdoZW4gaXQgY29tZXMgdXAsIHRoZSBwcm9tcHQgCj4+
IHdpbGwgYmUKPj4gc29tZXRoaW5nIGxpa2UKPj4KPj4ga2lkMz4KPj4KPj4gVGhlIGFwcGxpY2F0
aW9uIGhhcyBnb3QgZmV3IGNvbW1hbmRzIHlvdSBjYW4KPj4gcnVuIGluIHRoaXMgaW50ZXJhY3Rp
dmUgbW9kZSBzdWNoIGFzIGZyb210YWcgdG8gcmVuYW1lIGZpbGVzIAo+PiB1c2luZyB0aGVpcgo+
PiB0YWdzLCB0b3RhZyB0byBzYXZlIGZpbGVzIHVzaW5nIHN0cmluZyBmb3JtYXQgYmFzZWQgb24g
cGF0aCBhbmQgCj4+IGZpbGUKPj4gbmFtZXMuIHRhZyAxIHRvIGNoYW5nZSB0YWdzIHRvIHRoZSB0
YWcgb25lIGZvcm1hdDsgdGFnIDIgdG8gCj4+IHN3aXRjaCB0bwo+PiB2Mi4zIHRhZ3M7IHNhdmUg
dG8gc2F2ZSB5b3VyIHRhZ2dlZCBmaWxlczsgc2VsZWN0IGFsbCB0byBzZWxlY3QgCj4+IGZpbGVz
LAo+PiBldGMuCj4+Cj4+Cj4+IFNvIHlvdSBjYW4gZm9ybWF0IGHCoCBzdHJpbmcgd2hpY2ggdGVs
bHMgaXQgdGhlCj4+IHN0cnVjdHVyZSBvZiB5b3VyIGZpbGVzLgo+PiBZb3Ugc2VwYXJhdGUgZmls
ZXMsIGRpcmVjdG9yaWVzIGFuZAo+PiBzdWJkaXJlY3RvcmllcyB1c2luZyBhIHNsYXNoLiBZb3Ug
dXNlIGl0cyBidWlsdGluIHRhZyAKPj4gcmVmZXJlbmNlcyBsaWtlCj4+ICJ5ZWFyIiwgImFsYnVt
YXJ0aXN0IiwgImFydGlzdCIsICJnZW5yZSIsICJ0cmFjayIgInRpdGxlIi4gCj4+IFRpdGxlIGlz
Cj4+IHNpbXBseSB0aGUgdGl0bGUgZm9yIGEgZmlsZSwgdHJhY2sgaXMgdGhlIHRyYWNrIG51bWJl
ciwgYW5kIHRoZSAKPj4gcmVzdCBhcmUKPj4gc2VsZiBleHBsYW5hdG9yeS4gVGh1cywgYSBmb2xk
ZXIgd2l0aCB0aGVzZSBmaWxlczoKPj4KPj4gMSBDb3VudHJ5IEJveS5tcDMKPj4gMiBNYWtlIG1l
IGJlbGlldmUubXAzCj4+IGV0Yy4KPj4KPj4gQnkgYW4gYXJ0aXN0IGNhbGxlZCBSb3kgRml0eiwg
aW4gYSBkaXJlY3Rvcnkgc3RydWN0dXJlIHN1Y2ggYXMKPj4gIn4vTXVzaWMvUm95IEZpdHovIiwg
eW91IHdvdWxkIGRvIHNvbWV0aGluZyBsaWtlIHRoaXM6Cj4+Cj4+ICQga2lkMy1jbGkKPj4KPj4g
a2lkMy1jbGk+IHRvdGFnICJ7YXJ0aXN0fS97dHJhY2t9IHt0aXRsZX0iCj4+Cj4+IEFuZCBhbGwg
eW91ciBtcDMgZmlsZXMgd2lsbCBiZSB0YWdnZWQuIEFmdGVyIHRhZ2dpbmcsIGJlZm9yZSAKPj4g
cXVpdHRpbmcsCj4+IHlvdSBoYXZlIHRvIHNhdmUgd2l0aCB0aGUgInNhdmUiIGNvbW1hbmQuCj4+
Cj4+Cj4+IFlvdSBjYW4gY2hlY2sgdG8gc2VlIHdoaWNoIGZpbGVzIGNoYW5nZWQgYnkgc2ltcGx5
IGlzc3VpbmcgYSAKPj4gImxzIgo+PiBjb21tYW5kLiBBbnkgbW9kaWZpZWQgZmlsZXMgd2lsbCBo
YXZlIGHCoCBTdGFyIGJlZm9yZSBpdC4KPj4KPj4gSFRILAo+Pgo+Pgo+PiBJc2hlCj4+Cj4+IE9u
IFRodSwgTWFyIDE3LCAyMDIyIGF0IDA5OjU1wqAgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgCj4+
IGRpc2N1c3Npb24KPj4gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pj4gWW91IGNh
biB0cnkgc29tZXRoaW5nIGxpa2UgZGlzY29ncy5jb20gdG8gZmluZCB0cmFjayAKPj4+IGluZm9y
bWF0aW9uIGZvcgo+Pj4gZGlza3MgdGhhdCB5b3UgY291bGRuJ3QgZmluZCBpbiBjZGRiLCBhbHRo
b3VnaCB5b3Ugd2lsbCBuZWVkIGEKPj4+IHN0YXJ0aW5nIHBsYWNlLCBsaWtlIHRoZSBDRCB0aXRs
ZSwgdGhlIGFydGlzdCwgb3IgbWF5YmUgYSBzb25nIAo+Pj4gdGl0bGUKPj4+IHlvdSBrbm93IHRo
YXQgeW91IGNhbiBwb3AgaW50byB0aGUgc2VhcmNoIGJveC4gWW91IGNhbiB0aGVuIAo+Pj4gZmls
bCBpbgo+Pj4gdGhlIGluZm9ybWF0aW9uIGFuZCBzdWJtaXQgaXQgdG8gY2RkYiwgSSB0aGluayBm
cmVlZGIgCj4+PiBhY3R1YWxseSwKPj4+IGFzc3VtaW5nIHlvdSBzdGlsbCBoYXZlIHRoZSBDRC4g
SSdtIG5vdCBzdXJlIHRob3VnaCB3aGF0IHdpbGwgCj4+PiBzdWJtaXQKPj4+IHRvIGZyZWVkYiwg
YW5kIGdldHRpbmcgdGhpcyBpbmZvcm1hdGlvbiBtYXkgb3IgbWF5IG5vdCBiZSAKPj4+IHVzZWZ1
bCBmb3IKPj4+IGF1dG9tYXRpYyB0YWdnaW5nLCBtZWFuaW5nIHRoYXQgeW91IG1heSBuZWVkIHRv
IGZpbGwgaW4geW91ciAKPj4+IHRhZ3MKPj4+IG1hbnVhbGx5IGFzIHdlbGwuIEtlZXAgaW4gbWlu
ZCBhbHNvIHRoYXQgZGlzY29ncyBoYXMgbG90cyBvZiAKPj4+IGRpc2tzIHlvdQo+Pj4gY2Fubm90
IGZpbmQgaW4gZnJlZWRiLCBidXQgSSBoYXZlIGZvdW5kIGF0IGxlYXN0IG9uZSBDRCBvbiAKPj4+
IGZyZWVkYiB0aGF0Cj4+PiBkaXNjb2dzIGtub3dzIG5vdGhpbmcgYWJvdXQsIHNvIGRlcGVuZGlu
ZyBvbiB3aGF0IHlvdSBoYXZlLCAKPj4+IHlvdXIKPj4+IG1pbGVhZ2UgY2FuIGNlcnRhaW5seSB2
YXJ5Lgo+Pj4KPj4+IH5LeWxlCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4
LWxpc3RAcmVkaGF0LmNvbQo+Pj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo+Pgo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAoKCi0tIApHb29kIHBlb3BsZSBkbyBub3QgbmVlZCBsYXdzIHRvIHRl
bGwgdGhlbSB0byBhY3QgcmVzcG9uc2libHksIAp3aGlsZSBiYWQgcGVvcGxlIHdpbGwgZmluZCBh
IHdheSBhcm91bmQgdGhlIGxhd3MuCi0gUGxhdG8gKDQyNy0zNDcgQi5DLikKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

