Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B51C7B80BC
	for <lists+blinux-list@lfdr.de>; Wed,  4 Oct 2023 15:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696425762;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jOjBYu1pfBldArkakj2ma4edszhoqyKZJ0WNUuYBgaQ=;
	b=XIEKhO9cewLenMMLB/kgqGgGtfw+bGTouLL4Q/dCI74zKnM1XXoO8sgwYMFPWOyhLKzZ6Z
	en6QOYFesNBYQLvC050g176TIY1FGXhtfwSiWbhbfrP0kKBbnossccvigZDdwlvifAlP6Y
	LX1aNp7jOSeW/PZtwmyBNrl5qeuRI1Y=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-61-lYHdoBJlPM-VLxWZhCgm9Q-1; Wed, 04 Oct 2023 09:22:37 -0400
X-MC-Unique: lYHdoBJlPM-VLxWZhCgm9Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 733DF29AA3B6;
	Wed,  4 Oct 2023 13:22:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0A6EC40C2017;
	Wed,  4 Oct 2023 13:22:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 615EA19465A3;
	Wed,  4 Oct 2023 13:22:24 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (1.0)
Subject: Re: Intro.
Date: Wed, 4 Oct 2023 13:09:40 +0000
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
In-Reply-To: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
To: blinux-list@redhat.com
X-Spam-Status: No, score=-0.90
Message-ID: <mailman.1164.1696425743.2981445.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R29vZCBtb3JuaW5nIGV2ZXJ5b25lLiBJIGFtIG5vdCBuZXcgdG8gTGVubm94LiBCdXQgSSBoYXZl
IGEgbmV3IGFybSBiYXNlZCBjb21wdXRlci4gSSBhbSB0cnlpbmcgdG8gZGVjaWRlIGJldHdlZW4g
dHdvIGRpc3RyaWJ1dGlvbnMuIFdoaWNoIGlzIGdvaW5nIHRvIGJlIGVhc2llciB0byBpbnN0YWxs
IG9yY2Egb24/IFR3byBhcmNoIDY0IG1lYW5pbmcgdGhlIGFyY2ggYXJjaGl0ZWN0dXJlIG9yIDY0
IGJpdCBhcm0gcHJvY2Vzc29yLiBPciBmZWRvcmEsIGJlY2F1c2UgSSByZW1lbWJlciB1c2luZyBm
ZWRvcmEgbWFueSB5ZWFycyBhZ28gYmVjYXVzZSBvZiB0aGUgYXNzaXN0YW5jZSBvZiBhIGxhdGUg
ZnJpZW5kLiBKdXN0IGZvciB0aGUgcmVjb3JkLiBJIGFtIHVzaW5nIHBhcmFsbGVscyBvbiBhbiBh
cm0gYmFzZWQgTTIgTWFjLgoKRnJvbSB0aGVzZSB0d28gcXVlc3Rpb25zLCBJIGFtIG5lZWRpbmcg
dG8gY2hhbmdlIHRoZSBlbWFpbCBib3ggb3IgZW1haWwgdGhhdCBJIGdldCBmcm9tIHRoaXMgbGlz
dCAgaXMgdGhlcmUgYW4gZWFzeSB3YXkgdG8gZG8gdGhhdC4gSSB0aGFuayB5b3UgaW4gYWR2YW5j
ZSBmb3IgYW55IHJlc3BvbnNlIHRvIHRoaXMgZW1haWwuCgpQbGVhc2UgYmUgYXdhcmUgdGhhdCBJ
IGFtIGRpY3RhdGluZyB0aGlzIHRvIG15IHBob25lLiBUbyB0aGUgYWN0dWFsIGVtYWlsIGFkZHJl
c3MgdG8gcmVhY2ggbWUgaGFzIGNoYW5nZWQuIEkgYW0ganVzdCBub3QgZ290dGVuIGFyb3VuZCB0
byBjaGFuZ2luZyBteSBQaG9uZSBzaWduYXR1cmUgZW1haWwgIEZpbGUuIFRoZSBuZXcgZW1haWwg
YWRkcmVzcyBpcy4gIHByZXNpZGVudGRlYWZibG5mYkBtYXVyaWNlLWFtaW5lcy5jb20uICBBbGwg
b2YgdGhlIHJlc3Qgb2YgdGhlIGNvbnRhY3QgaW5mb3JtYXRpb24gaXMgc3RpbGwgdGhlIHNhbWUu
IEp1c3QgdGhlIGVtYWlsIGFkZHJlc3MgY2hhbmdlZC4KU2VudCBmcm9tIG15IGlQaG9uZS4gCkVt
YWlsLCBtbWluZXNAbWF1cmljZW1pbmVzLm9yZwogIHRleHQgbnVtYmVyIDY2MS04NjgtOTY0Ny4K
RmF4IG5vIDY2MS00NDktMzc0Ni4KCgpQcmVzaWRlbnQsIE5hdGlvbmFsIEZlZGVyYXRpb24gb2Yg
dGhlIGJsaW5kIERlYWZibGluZCBkaXZpc2lvbi4gSVAgcmVsYXkgbnVtYmVyIDY2MS0yNDktOTcx
NS4KVmljZSBQcmVzaWRlbnQgbmF0aW9uYWwgRmVkZXJhdGlvbiBvZiB0aGUgYmxpbmQgb2YgQ2Fs
aWZvcm5pYSBCYWtlcnNmaWVsZCBjaGFwdGVyLgphbWF0ZXVyIHJhZGlvLCBjYWxsIHNpZ24sIGtk
MGlrby4KCj4gT24gT2N0IDQsIDIwMjMsIGF0IDExOjE4LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79IaSBn
dXlzLCBzbyBnbGFkIHRvIGJlIGpvaW5pbmcgdGhpcyBncm91cC4gSSBrbm93IG5vdGhpbmcgYWJv
dXQgTGludXggcGxhdGZvcm0gYnV0IHdvdWxkIGxpa2UgdG8gdHJ5IExpbnV4IGZvciBteXNlbGYu
IFRoZSBwcm9ibGVtIGlzIEkgd291bGRu4oCZdCBrbm93IHdoaWNoIHZlcnNpb24gdG8gdHJ5IG91
dCBmaXJzdCBhbmQgdGhhdCBpcyBvbmUgcmVhc29uIGZvciBqb2luaW5nIHRoaXMgZ3JvdXAuIEkg
YW0gYSBibGluZCBwZW5zaW9uZXIgbGl2aW5nIGluIFNjb3RsYW5kIFVLLiBJRiB5b3UgY291bGQg
cHJvdmlkZSBtZSB3aXRoIGhlbHAvYWR2aWNlIG9uIHdoaWNoIHZlcnNpb24gb2YgTGludXggd291
bGQgYmUgYmVzdCBmb3IgbWUgSSB3b3VsZCBhcHByZWNpYXRlIGl0IGluZGVlZCwgQmlsbHkgIAo+
IAo+IFNlbnQgZnJvbSBNYWlsIGZvciBXaW5kb3dzCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdAo=

