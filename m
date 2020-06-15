Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 995361F9426
	for <lists+blinux-list@lfdr.de>; Mon, 15 Jun 2020 12:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592215227;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gKz+LuDxsqfdGkblLCh9ZQK2UNI9UKFjjcCtY4ZTMfo=;
	b=LvoXW2Xc84kMC27qIq/RRuPqG3AEnQ9bCvlniVZt48mYlJwpgtKtRMqYWYSjLAlYrh1nJH
	ylTXMQ4Rju8ZNo5CwpEItfrhp2gbYtOF04vBfOAFWxJ4t1+qSupYtot1JcOGY5KYXjPMRR
	WtedgOhT1Xf3CeBkdF8iL+zMKvGu6ag=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-207-Q7AK8aClOwOsoMTs-jZUdg-1; Mon, 15 Jun 2020 06:00:25 -0400
X-MC-Unique: Q7AK8aClOwOsoMTs-jZUdg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9D219835BC4;
	Mon, 15 Jun 2020 10:00:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4FCD990337;
	Mon, 15 Jun 2020 10:00:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 98EEA180954D;
	Mon, 15 Jun 2020 10:00:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05FA04xR017765 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Jun 2020 06:00:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BBF78110F0BF; Mon, 15 Jun 2020 10:00:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B777B110F0BE
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 10:00:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9DCD3101A525
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 10:00:01 +0000 (UTC)
Received: from opera.rednote.net (opera.rednote.net [66.228.34.147]) (Using
	TLS) by relay.mimecast.com with ESMTP id
	us-mta-417-KpZsOyG2OhKoqQGmTLeEfw-1; Mon, 15 Jun 2020 05:59:49 -0400
X-MC-Unique: KpZsOyG2OhKoqQGmTLeEfw-1
Received: from rednote.net (localhost [IPv6:0:0:0:0:0:0:0:1])
	by opera.rednote.net (8.15.2/8.15.2) with ESMTPS id 05F9xmc8101085
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO)
	for <blinux-list@redhat.com>; Mon, 15 Jun 2020 09:59:48 GMT
DMARC-Filter: OpenDMARC Filter v1.3.2 opera.rednote.net 05F9xmc8101085
DKIM-Filter: OpenDKIM Filter v2.11.0 opera.rednote.net 05F9xmc8101085
Received: (from janina@localhost)
	by rednote.net (8.15.2/8.15.2/Submit) id 05F9xmAE101084
	for blinux-list@redhat.com; Mon, 15 Jun 2020 05:59:48 -0400
Date: Mon, 15 Jun 2020 05:59:48 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Prospects for an accessible and open version of Android?
Message-ID: <20200615095948.GB2180@rednote.net>
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
	<1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
MIME-Version: 1.0
In-Reply-To: <1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
X-Operating-System: Linux opera.rednote.net 5.6.16-200.fc31.x86_64
X-MIME-Autoconverted: from 8bit to quoted-printable by opera.rednote.net id
	05F9xmc8101085
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05FA04xR017765
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Content-Disposition: inline

SSdkIGFncmVlIGl0J3Mgbm90IGFuIG9wdGltYWwgc29sdXRpb24sIGFuZCBJJ20gdW5hd2FyZSB3
aGV0aGVyIHRoZXJlJ3MKYSBiZXR0ZXIgY29uZmlndXJhdGlvbiBvcHRpb24gYXZhaWxhYmxlIHdp
dGggbWFpbG1hbjsgaG93ZXZlciwgaXQgaXMKaW50ZW50aW9uYWwgYW5kIHdhcyBwdXQgaW4gcGxh
Y2UgdG8gc29sdmUgYSBwcm9ibGVtIHdlIGVuY291bnRlcmVkIGEgZmV3IHllYXJzIGFnby4KCk5v
dywgaGF2aW5nIHNhaWQgdGhpcyBtdWNoLCBJIHJlZ3JldCBJIGRvbid0IHJlbWVtYmVyIHRoZSBw
YXJ0aWN1bGFycyBvZgp0aGUgcHJvYmxlbSB3ZSB3ZXJlIHNvbHZpbmcgYXQgdGhlIHRpbWUuIEkg
b25seSByZW1lbWJlciB0aGF0IHRoZQpjdXJyZW50IGJlaGF2aW9yIHNvbHZlZCB0aGUgaXNzdWUu
CgpQZXJoYXBzIHNvbWVvbmUgZWxzZSBvbiBsaXN0IG1heSBoYXZlIGJldHRlciByZWNhbGwgb2Yg
dGhlIHByb2JsZW0gYmFjawp0aGVuPyBJIHJlY2FsbCBvbmx5IHRoYXQgaXQgd2FzIGEgYmlnIGRl
YWwgZm9yIHNvbWUgcmVhc29uLgoKQmVzdCwKCkphbmluYQoKCkxpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JpdGVzOgo+ID4gT24gSnVuIDE0LCAyMDIwLCBhdCAxMzoyMywgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4g
d3JvdGU6Cj4gPiAKPiA+IFdoYXQgaXMgYSDigJhzZXR0aW5ncyBpc3N1ZeKAmT8KPiA+IEFyZSB5
b3UgbWVhbmluZyBhIHByb2JsZW0gd2l0aCBzZXR0aW5ncz8KPiAKPiBZZXMuICBPbiBhbGwgb2Yg
bXkgb3RoZXIgbWFpbGluZyBsaXN0cywgdGhlIGlkZW50aXR5IG9mIHRoZSBzZW5kZXIgaXMgZ2l2
ZW4gaW4gdGhlIEZyb20gbGluZS4gIEluIHNvbWUgY2FzZXMsIHRoZSBlbWFpbCBhZGRyZXNzIGlz
IG9iZnVzY2F0ZWQsIGJ1dCBJIHN0aWxsIGtub3cgd2hvIHNlbnQgdGhlIG1lc3NhZ2UuICBJbiB0
aGlzIGxpc3QsIGFsbCBvZiB0aGUgRnJvbSBsaW5lcyBzYXkgIk9uIC4uLiwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Ii4g
IEkgZmluZCB0aGlzIGNvbmZ1c2luZywgYmVjYXVzZSBJIGNhbid0IHRlbGwgd2hvJ3Mgc2F5aW5n
IHdoYXQgKHVubGVzcyB0aGV5IGhhcHBlbiB0byBlbmQgdGhlaXIgcG9zdCB3aXRoIGEgc2lnbmF0
dXJlKS4KPiAKPiBJZiB0aGlzIG1haWxpbmcgbGlzdCBiZWhhdmlvciBpcyBpbnRlbnRpb25hbCwg
cGxlYXNlIGxldCBtZSBrbm93IGFuZCBJJ2xsIGxpdmUgd2l0aCBpdC4gIElmIGl0IGlzbid0LCBw
ZXJoYXBzIHRoZSBzZXR0aW5ncyBvbiB0aGUgbWFpbGluZyBsaXN0IG5lZWQgdG8gYmUgbW9kaWZp
ZWQuCj4gCj4gLXIKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxp
c3QKCi0tIAoKSmFuaW5hIFNhamthCgpMaW51eCBGb3VuZGF0aW9uIEZlbGxvdwpFeGVjdXRpdmUg
Q2hhaXIsIEFjY2Vzc2liaWxpdHkgV29ya2dyb3VwOglodHRwOi8vYTExeS5vcmcKClRoZSBXb3Js
ZCBXaWRlIFdlYiBDb25zb3J0aXVtIChXM0MpLCBXZWIgQWNjZXNzaWJpbGl0eSBJbml0aWF0aXZl
IChXQUkpCkNoYWlyLCBBY2Nlc3NpYmxlIFBsYXRmb3JtIEFyY2hpdGVjdHVyZXMJaHR0cDovL3d3
dy53My5vcmcvd2FpL2FwYQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29t
Cmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

