Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB57530BE9
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 11:03:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653296635;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5X4wm5rJ0G8YC+rsv4Y8dLSQ23/JFu7dTyg0ybH4v/k=;
	b=QLPmuilamtOntt5yccfZXy6DT916yN+1oXV/GBXRUCYYEPNg3GU3QmQ+WV22xhrHRwKHdg
	aKvdtLQv0oqJ76Hvde2JZ27JxmyRQ4pbiyRo6fdk8+JSjOD/wh2t0Qemsv1CMb/bx7C8P/
	BTFpnS9vAZOrq72gSnlp+/3bDxCr3Mo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-7cKa_fcjO1qctR1fr7Q_NQ-1; Mon, 23 May 2022 05:03:52 -0400
X-MC-Unique: 7cKa_fcjO1qctR1fr7Q_NQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD5243810D2E;
	Mon, 23 May 2022 09:03:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 8B1FC2166B25;
	Mon, 23 May 2022 09:03:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 12DBA194705E;
	Mon, 23 May 2022 09:03:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 23 May 2022 11:03:37 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Installing the sam package on Ubuntu?
In-Reply-To: <mailman.17364.1653246811.111208.blinux-list@redhat.com>
References: <mailman.17535.1653243154.111206.blinux-list@redhat.com>
 <mailman.17364.1653246811.111208.blinux-list@redhat.com>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.17543.1653296624.111209.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

R29vZCBkYXksClNhbSBzaG91bGQgcnVuIHdpdGggcHl0aG9uMyBhcyB0aGUgYXJjaCB1c2VycyBu
ZWVkZWQgdGhhdCB3aGVuIGl0IHdhcyAKd3JpdHRlbi4KaHR0cDovL3d3dy5zYW5vdGUuY28uemEv
ZG93bmxvYWRzL3NhbS1sYXRlc3QudGFyLmJ6MiBpcyB0aGUgY29ycmVjdCB1cmwuClJlbWVtYmVy
IHRvIGFsc28gaW5zdGFsbCB0aGUgcHl0aG9uLWFsc2FhdWRpbyBwYWNrYWdlIGFzIGV4cGxhbmVk
IGluIHRoZSAKUkVBRE1FLgpXcml0ZSBtZSBhdCB3dmR3YWx0QGNzaXIuY28uemEgaWYgeW91IHN0
cnVnZ2xlIHRvIGdldCBpdCBnb2luZy4KUmVnYXJkcywgV2lsbGVtCgoKT24gU3VuLCAyMiBNYXkg
MjAyMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKCj4gaGVyZTog
aHR0cDovL3d3dy5zYW5vdGUuY28uemEvZG93bmxvYWRzL3NhbS1sYXRlc3QudGFyLmJ6Mgo+IE5v
dCBzdXJlIHRoaXMgdmVyc2lvbiBoYXMgYmVlbiBwb3J0ZWQgdG8gUHl0aG9uMwo+Cj4gVW5sZXNz
IGhlIGRpZCByZWNlbnRseSwgV2lsbGVtIGhhcyBub3Qgc2V0IHVwIGEgZ2l0IHJlcG9zaXRvcnku
Cj4KPiBBRkFJSyBpdCBoYXMgbm90IGJlZW4gcGFja2FnZWQgYnkgb3RoZXIgZGlzdHJpYnV0aW9u
cyB0aGFuIFNsaW50Lgo+Cj4gQ2hlZXJzLAo+IERpZGllcgo+IC0tCj4gRGlkaWVyIFNwYWllcgo+
Cj4KPiBMZSAyMi8wNS8yMDIyIMOgIDIwOjEyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIGEgw6ljcml0wqA6Cj4+IEhpIGFsbCwKPj4gCj4+IEkgYW0gbG9va2luZyBmb3IgdGhl
IHNhbSBwYWNrYWdlIHdyaXR0ZW4gYnkgV2lsbGVtIHZhbiBkZXIgV2FsdCAoU3BlbGxpbmcpLgo+
PiAKPj4gSSB0cmllZCB0aHJldyAnI3N1ZG8gYXB0LWdldCBpbnN0YWxsIHNhbScgYnV0IG5vIGx1
Y2sgYXQgYWxsLgo+PiAKPj4gSSBrbm93IHRoZSBwYWNrYWdlIGNvbWVzIGJ5IGRlZmF1bHQgb24g
U2xpbnQsIGJ1dCBldmVuIGRyLiBHb29nbGUgY2Fubm90IGhlbHAgbWUKPj4gaGVyZS4KPj4gCj4+
IElmIHlvdSBrbm93IHdoZXJlIHRvIGZpbmQgaXQsIHBsZWFzZSBsZXQgbWUga25vdy4KPj4gCj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcg
bGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

