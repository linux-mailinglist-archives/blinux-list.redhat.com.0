Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF2C4FC502
	for <lists+blinux-list@lfdr.de>; Mon, 11 Apr 2022 21:24:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649705073;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eIbOOwBnGzsfCua4ZIVKRwVN5qFAy23hcqhArg5p0rk=;
	b=iHF1cEMpSM82YTg7Fx69YMA43/KVKU0+Szf/abBZyleITlFcNrhZRY+trfsiIKlBfv9AMv
	fOtpxm8DlfCs3Ca0SNCsC+RWFI2f1HqvtjlkBHMUTYCTLKA3Hckd3zSkR+lQhNEgEm07An
	vtwV+REG1b539/Vv0CUK2tZAMLvKd5s=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-616-0Bi333QXNY2aoLqB6-duWQ-1; Mon, 11 Apr 2022 15:24:31 -0400
X-MC-Unique: 0Bi333QXNY2aoLqB6-duWQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1FB9B3802AC4;
	Mon, 11 Apr 2022 19:24:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A39A7C2E00E;
	Mon, 11 Apr 2022 19:24:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 233D21940373;
	Mon, 11 Apr 2022 19:24:28 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 11 Apr 2022 19:16:58 +0000
To: blinux-list@redhat.com
Subject: Re: The best editor for indentation monitoring
In-Reply-To: <mailman.7761.1649684597.111204.blinux-list@redhat.com>
References: <mailman.7761.1649684597.111204.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.7809.1649705067.111204.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksCgppZiB5b3UgZG9uJ3QgbmVlZCBhZGRpdGlvbmFsIGZ1bmN0aW9uYWxpdHkgbGlrZSBhdXRv
LWNvbXBsZXRpb24gb3IKaW50ZWxseSBzZW5zZSwgbXkgUmlkZSBlZGl0b3IgaXMgZGVzaWduZWQg
dG8gbWFrZSB1c2Ugb2YgdGhlIGluZGVudGF0aW9uCnRvIHNpZ25pZmljYW50bHkgZWFzZSBjb2Rp
bmcgZm9yIGJsaW5kIHBlb3BsZS4KCgpVbmZvcnR1bmF0ZWx5LCBteSB3ZWJzaXRlIGlzIGRvd24g
cmlnaHQgbm93IGR1ZSB0byBhIHRyYW5zaXRpb24gcHJvY2VzcywKc28gSSBjYW4ndCBzZW5kIHlv
dSBqdXN0IGEgbGluayB0byBhbiBhcnRpY2xlLgoKCkJ1dCBpbiBzaG9ydCwgUmlkZSwgaW5zdGVh
ZCBvZiB0cmVhdGluZyB0aGUgY29kZSBsaWtlIGEgYnVuY2ggb2YgbGluZXMsCnByZXNlbnRzIHlv
dSB0aGUgdGV4dCBsaWtlIGEgdHJlZSwgb25seSBzaG93aW5nIHlvdSB0aGUgY3VycmVudCBsZXZl
bAphbmQgaXRzIGNvbnRlbnQuCgoKU2F5IHlvdSBoYXZlIGEgZmlsZSB3aXRoIDUgY2xhc3Nlcy4g
VGhlc2UgbWF5IGhhdmUgb3ZlciAxMDAgbGluZXMgZWFjaCwKYW5kIGluIGEgc3RhbmRhcmQgZWRp
dG9yLCB5b3UnZCBuZWVkIHRvIGNyb3NzIGFsbCBvZiB0aGVpciBjb250ZW50LCBvcgp1c2Ugc2Vh
cmNoIHRvIGdldCB0byB5b3VyIHBsYWNlIG9mIGludGVyZXN0LgoKCldoZXJlYXMgaW4gcmlkZSwg
eW91J2QganVzdCBzZWU6CgoKY2xhc3MgQToKCmNsYXNzIEI6CgpDbGFzcyBDOgoKQ2xhc3MgRDoK
CkNsYXNzIEU6CgoKQW5kIGlmIGFueSBjbGFzcyBjYXRjaGVzIHlvdXIgaW50ZXJlc3QgKGJlY2F1
c2UgeW91IHdhbnQgdG8gd29yayBvbiBpdApvciByZWFkIHRocm91Z2ggaXQpLCB5b3UgY2FuIGV4
cGFuZCBpdCBhbmQgeW91ciB2aWV3IHdvdWxkIGJlY29tZToKCgpjbGFzcyBDOgoKCmRlZiBfX2lu
aXRfXyhzZWxmKToKCgpkZWYgc2F5X2hpKHNlbGYpOgoKZGVmIGFza19hX3F1ZXN0aW9uKHNlbGYp
OgoKCkFnYWluLCB5b3Ugc2VlIGp1c3QgdGhlIGNvbnRlbnQgb2YgeW91ciBjdXJyZW50IGxvY2F0
aW9uLgoKSWYgYW55IG1ldGhvZCBpbnRlcmVzdHMgeW91LCB5b3UgY2FuIGZ1cnRoZXIgZGl2ZSBp
biBhbmQgeW91ciB2aWV3IHdvdWxkCmJlY29tZToKCgpkZWYgc2F5X2hpKHNlbGYpOgoKcHJpbnQo
ZiJIaSwgbXkgbmFtZSBpcyB7c2VsZi5fbmFtZX0iKQoKCkl0J3Mgc2ltaWxhciB0byBjb2RlIGZv
bGRpbmcsIGV4Y2VwdCB0aGF0IGhlcmUgeW91IGRvbid0IHNlZSBhbnl0aGluZwpidXQgeW91ciBj
dXJyZW50IGFyZWEgb2YgaW50ZXJlc3QsIGFuZCBoYXZlIGZldyBzcGVjaWFsIGFiaWxpdGllcyBk
dWUgdG8KdGhlIHdheSBSaWRlIHdvcmtzLgoKRm9yIGV4YW1wbGUsIHRoZSBpbmRlbnRhdGlvbiBp
cyBtYW5hZ2VkIGZ1bGx5IGJ5IHRoZSBwcm9ncmFtLCBhbmQgeW91CmRvbid0IGV2ZW4gc2VlIGl0
IHdoaWxlIGNvZGluZy4gSWYgeW91IHdhbnQgdG8gY2hhbmdlIGl0IHNvbWV3aGVyZSwgeW91Cmhh
dmUgdG8gbWFrZSBhIGNvbnNpc3RlbnQgb3BlcmF0aW9uIGxpa2UgY3JlYXRpbmcgYSBuZXcgYmxv
Y2sgb2YgY29kZSwKbW92aW5nIGV4aXN0aW5nLW9uZXMgZXRjLgoKVGhhdCdzIHdoeSB5b3UgbGl0
ZXJhbGx5IGNhbid0IGdldCBpdCB3cm9uZywgZXZlbiBpZiB5b3Ugd2FudGVkIHRvLCB0aGUKZWRp
dG9yIHdvbid0IGxldCB5b3UuCgoKQ29weWluZyBhbmQgbW92aW5nIGNvZGUgYWxzbyBiZWNvbWVz
IHZlcnkgZWFzeSBpbiB0aGlzIHRyZWUgcGhpbG9zb3BoeSwKYnkgc2VsZWN0aW5nIG5vZGVzIGlu
c3RlYWQgb2Ygc3BlY2lmaWMgbGluZXMsIHlvdSBjYW4gaGF2ZSBlbnRpcmUgYmxvY2tzCm9mIGNv
ZGUgZmx5aW5nIGFyb3VuZCBqdXN0IGxpa2UgeW91J2QgYmUgY29weWluZyBvbmUgd29yZCBvciBj
aGFyYWN0ZXIsCndpdGhvdXQgZXZlciB3b3JyeWluZyB3aGV0aGVyIHlvdSBzZWxlY3RlZCBhbGwg
dGhlIGxpbmVzIHRoYXQgYmVsb25nCmludG8geW91ciBzZWxlY3Rpb24uCgoKVGhpcyBwcm9qZWN0
IG9yaWdpbmFsbHkgc3RhcnRlZCBmb3IgV2luZG93cywgYnV0IEkgcmV3cm90ZSBpdCBmb3IgTGlu
dXgsCml0IHdhcyB0aGUgZmlyc3QgdGhpbmcgSSBkaWQgb24gdGhlIG9wZW4gcGxhdGZvcm0sIGFz
IG5vdCBoYXZpbmcgaXQgd2FzCmxpa2UgYmVpbmcgd2l0aG91dCBteSByaWdodCBhcm0uCgoKVGhl
IExpbnV4IHZlcnNpb24gaXMgd3JpdHRlbiBpbiBSdXN0LCBpcyBibGF6aW5nbHkgZmFzdCBhbmQg
aGFzIG1hbnkKbW9kZXJuaXphdGlvbnMgb3ZlciB0aGUgV2luZG93cy1vbmUuCgoKSSBkaWQgbm90
IHJlbGVhc2UgaXQgeWV0LCBhcyB0aGVycmUgYXJlIHN0aWxsIHNvbWUgZm9ybWFsaXRpZXMgdG8g
YmUKZG9uZSBsaWtlIHByb3BlciBzZXR0aW5ncywgcGVyaGFwcyBhIG1vcmUgdHJhbnNwYXJlbnQg
Y29uZmlndXJhdGlvbiwgYW5kCkkgd2FudGVkIHRvIHJlcGxhY2UgQmFzcyB3aXRoIE9wZW5BTCBm
b3IgYXVkaW8uCgoKQnV0IGluIHRlcm1zIG9mIGZ1bmN0aW9uYWxpdHksIGl0IHdvcmtzIGdyZWF0
LiBJJ3ZlIHVzZWQgaXQgZm9yIGFsbApzb3J0cyBvZiBkZXZlbG9wbWVudCAtIFJ1c3QsIFB5dGhv
biwgQyMsIEtvdGxpbiwgWE1MLCBIVE1MLCBKYXZhU2NyaXB0LApEYXJ0LCBWYWxhLCBhbmQgdGhl
IGV4cGVyaWVuY2UgaGFzIGJlZW4gYXdlc29tZSAoaXQncyB0aGUgb25seSBjb2RlCmVkaXRvciBJ
J20gdXNpbmcpLgoKSSB1c2UgaXQgZXZlbiBvbiBsYXJnZSBmaWxlcyAobGlrZSBBbmRyb2lkIGxv
Z3MpIGFuZCBmaWxlcyB3aXRoIHZlcnkKbG9uZyBsaW5lcyAodHlwaWNhbGx5IHVuZm9ybWF0dGVk
IEpTT24gb3Igb3RoZXIgc2VyaWFsaXphdGlvbiBmb3JtYXQpLApQbHVtYSB1c3VhbGx5IGdldHMg
c3R1Y2sgd2l0aCB0aGVzZSwgUmlkZSBkb2VzIG5vdCBoYXZlIGFueSBwcm9ibGVtcywKc2luY2Ug
aXQgZG9lc24ndCB1c2UgYSBzdGFuZGFyZCB0ZXh0IGJveCBmb3IgaW5wdXR0aW5nIGFuZCBkaXNw
bGF5aW5nCnRleHQgKGluIGZhY3QsIGl0IGRvZXMgbm90IGRpc3BsYXkgdGV4dCBhdCBhbGwgaGFo
YSkuCgoKSWYgeW91IG9yIGFueW9uZSBlbHNlIHdvdWxkIGJlIGludGVyZXN0ZWQsIEkgY2FuIHBy
b3ZpZGUgYmV0YXMsIGFzIEkKaGF2ZSBubyBpZGVhIHdoZW4gaXMgdGhpcyBnb2luZyB0byBiZSBy
ZWxlYXNlZC4KCgpCZXN0IHJlZ2FyZHMKCgpSYXN0aXNsYXYKCgpExYhhIDExLiA0LiAyMDIyIG8g
MTU6NDMgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBuYXDDrXNhbChhKToKPiBI
aSwKPgo+IEkgd2FudCB0byB0cnkgd3JpdGUgYSBsaXR0bGUgZ2FtZSBpbiBQeXRob24sIHVzaW5n
IEd0ayBmb3IgZ3VpIGFuZAo+IFB5dGhvbiBhcyBwcm9ncmFtbWluZyBsYW5ndWFnZS4gQnV0IHRo
ZSBiaWdnZXN0IHByb2JsZW0gZm9yIG1lIGlzCj4gaW5kZW50YXRpb24uIFNvLCBjYW4geW91IHJl
Y29tbWVuZCBtZSBzb21lIGVkaXRvciwgd2hpY2ggd2lsbCBmb2xsb3cgYW5kCj4gaWYgcG9zc2li
bGUgY29ycmVjdCBteSBpbmRlbnRhdGlvbj8gRmVkb3JhIC8gVWJ1bnR1Lgo+Cj4gVGhhbmtzLAo+
Cj4gUGF2ZWwKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

