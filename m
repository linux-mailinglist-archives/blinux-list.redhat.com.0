Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAF07527CE
	for <lists+blinux-list@lfdr.de>; Thu, 13 Jul 2023 17:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689263780;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ot85hXqiboPtUTYRC7QBcQc5zKUgqOoPR/RC2wdjYzg=;
	b=GQ+jPGraRT2i2qmo347h6rMNvoe14SLKbMZGmloDZmPCzZi5evEMCaNPiYgs5U9htHV4QP
	c6drk6jrXdIHutSVAwr413fT5ARhucu2/zR7YuFkECZ8Im3j/RzTSf3N8C2qZHoNsQ63N8
	sDVZgq+aHdeenErMtSyyv/l9AGC47Bg=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-98-m7GTyf0qOVm4qUlmG6_ovA-1; Thu, 13 Jul 2023 11:56:17 -0400
X-MC-Unique: m7GTyf0qOVm4qUlmG6_ovA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFCAE1C28CF1;
	Thu, 13 Jul 2023 15:56:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 4308C200BA8B;
	Thu, 13 Jul 2023 15:56:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AC5DC19465A4;
	Thu, 13 Jul 2023 15:56:07 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 13 Jul 2023 10:55:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: Slint for beginners?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.821.1689183357.3826225.blinux-list@redhat.com>
 <mailman.24.1689262689.110736.blinux-list@redhat.com>
In-Reply-To: <mailman.24.1689262689.110736.blinux-list@redhat.com>
Message-ID: <mailman.18.1689263767.110742.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SXQncyBhbHdheXMgYmVlbiBhIHB1enpsZSB0byBtZTrCoCBXaGF0IGlzIG1lYW50IGJ5IGNvbnNv
bGUgb3IgY29uc29sZSAKbW9kZT/CoCBJJ3ZlIGhlYXJkIHRoYXQgdGVybSBmb3IgbWFueSB5ZWFy
czsganVzdCBuZXZlciBrbmV3IHdoYXQgaXQgd2FzIApvciBpcz/CoCBUaGFua3MgZm9yIGFueSBl
eHBsYW5hdGlvbiBvciBkZXNjcmlwdGlvbi4KCkhvd2FyZAoKCk9uIDcvMTMvMjAyMyAxMDozNyBB
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBZZXMsIEkgdGhp
bmsgc2xpbnQgd291bGQgYmUgYSBnb29kIGRpc3RyaWJ1dGlvbiBmb3IgeW91IGFzIGEgYmVnaW5u
ZXIgaWYKPiB5b3Ugc2VsZWN0IHRvIHN0YXJ0IGluIGNvbnNvbGUgbW9kZSBkdXJpbmcgdGhlIGlu
c3RhbGxhdGlvbi4gIFRoZSByZWFzb24KPiBpcyBldmVuIHdpdGggbWF0ZSBhbmQgcnVubmluZyBt
YXRlLXRlcm1pbmFsIHRoZSBzcGVlY2ggaXMgbGVzcyBzdGFibGUgdGhhbgo+IHdpdGggc3BlYWt1
cCBhbmQgcnVubmluZyBpbiBjb25zb2xlIGdldHMgeW91IHNwZWFrdXAgYW5kIG90aGVyIHNjcmVl
bgo+IHJlYWRlciBwYWNrYWdlcyB0aGF0IGFyZSBtb3JlIHN0YWJsZSB0aGFuIG9yY2EuICBJZiB5
b3UgZGVjaWRlIHRvIGdvIHdpdGgKPiBzbGludCwgcGxlYXNlIGRvIHlvdXJzZWxmIGEgZmF2b3Ig
YW5kIHN1YnNjcmliZSB0byB0aGUgc2xpbnQgZW1haWwgbGlzdC4KPiBUaGF0J3Mgb24gZnJlZWxp
c3RzLm9yZyBzaW5jZSB0aGF0IHdheSB5b3UnbGwgZ2V0IG9wZXJhdGluZy1zcGVjaWZpYyBoZWxw
Cj4gYW5kIHlvdSdyZSBub3QgdGhlIG9ubHkgb25lIHVzaW5nIHNsaW50IHdpdGggYSBzY3JlZW4g
cmVhZGVyIG9uIHRoYXQgbGlzdC4KPgo+Cj4gLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90
IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KPiBkZWZlbnNlIG9mIGxp
YmVydHk6IHNvYXAsIGJhbGxvdCwganVyeSwgYW5kIGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdAo+
IG9yZGVyLiIgRWQgSG93ZGVyc2hlbHQgMTk0MC4KPgo+IE9uIFdlZCwgMTIgSnVsIDIwMjMsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gR29vZCBhZnRlcm5v
b24sCj4+IEkgYW0gbmV3IHRvIExpbnV4ICYgYW0gY3VycmVudGx5IHVzaW5nIE1pbnQgMjEuMSwg
YnV0IGtlZXAgbG9vc2luZyBzcGVlY2ggd2l0aCBPcmNhLgo+PiBBcyBhIHJlc3VsdCwgSSBtYXkg
c3dpdGNoIHRvIFNsaW50LCB3aGljaCB3YXMgcmVjZW50bHkgcmVjb21tZW5kZWQgdG8gbWUgYnkg
YSBmcmllbmQuCj4+IEJlZm9yZSBJIGRvIHRob3VnaCwgSSdkIGxpa2UgdG8gZ2V0IG9waW5pb25z
IGZyb20gdGhlIG1lbWJlcnMgb2YgdGhpcyBsaXN0IGFzIHRvIHdoZXRoZXIgb3Igbm90IHRoaXMg
d291bGQgYmUgYSBnb29kIGRpc3RyaWJ1dGlvbiBmb3IgbWUsIGFzIGEgYmVnaW5uZXI/Cj4+Cj4+
Cj4+IFRoYW5rcywKPj4gSmVzc2ljYSBEYWlsCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4KPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0Cj4KLS0gCldoZW4gaW4gZG91YnQ7IENoZWF0ICEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxp
bmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

