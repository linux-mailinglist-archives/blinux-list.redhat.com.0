Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BA10260B026
	for <lists+blinux-list@lfdr.de>; Mon, 24 Oct 2022 18:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666627369;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3e3/2hnuI/jGMnQY5pVYJxRPHcgx3bNZyZoKfwYuvCY=;
	b=RmexeLlfYgAh0InfLwGSsmLcFAR2/bBdB6OT8AdktLharRm+LjVAB0JcYj3JEgczNi1IrW
	BRHMeIxcPJZ/DFLBYyxOINdsU3oM2oR6jzebOBbYq9LeXB0aLSrT246QstqfyH/IJCaR13
	g8QYr1PXxauWMY9uAFQ5AYcKjPvra4I=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-660-EyyDfSBxNgOR2MSC_UYDPw-1; Mon, 24 Oct 2022 12:02:46 -0400
X-MC-Unique: EyyDfSBxNgOR2MSC_UYDPw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 536BC101B44C;
	Mon, 24 Oct 2022 16:02:42 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C8546492B0A;
	Mon, 24 Oct 2022 16:02:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4190419465A0;
	Mon, 24 Oct 2022 16:02:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 24 Oct 2022 17:02:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: Konsole progress/any good alternatives?
To: blinux-list@redhat.com
References: <mailman.1962.1666446531.3005.blinux-list@redhat.com>
 <mailman.1925.1666447704.3004.blinux-list@redhat.com>
In-Reply-To: <mailman.1925.1666447704.3004.blinux-list@redhat.com>
Message-ID: <mailman.2157.1666627354.3005.blinux-list@redhat.com>
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

SSd2ZSB0YWtlbiBhIHBva2UgYXQgdGhlIGNvZGUgdG8gc2VlIGlmIEkgY2FuIGhlbHAgd2l0aCBv
YnZpb3VzIApzb2x1dGlvbnMgYW5kLCBob25lc3RseSwgSSBkb24ndCBldmVuIGJlZ2luIHRvIHVu
ZGVyc3RhbmQgaG93IHRoYXQgZmlsZSAKaXMgcHV0IHRvZ2V0aGVyIGF0IGFsbC4KCkFzc3VtaW5n
IHlvdSBmaXggdGhpbmdzLCB3b3VsZCB0aGF0IGJlIGEgUFIsIG9yIHdvdWxkIEkganVzdCBiZSBh
YmxlIHRvIApkbyBhIHBhcnUgLVMga29uc29sZS1naXQsIHVzZSBteSBhdXIgaGVscGVyIGFuZCBn
byBmcm9tIHRoZXJlPyBJJ20gbm90IApzdXJlIGlmIGl0J2QganVzdCBiZSBhIHN0cmFpZ2h0IGNv
bW1pdCBvciBob3cgaXQnZCB3b3JrLgoKCkkndmUgcnVuIGludG8gdGhlIHNhbWUsIG9yIHNpbWls
YXIgYXQgbGVhc3QsIGlzc3VlcyB3aXRoIExYUVQncyB0ZXJtaW5hbCAKanVzdCBhcyBhIGhlYWRz
IHVwIGJ1dCBJJ20gbm90IHN1cmUgYW55dGhpbmcgY2FuIGJlIGRvbmUgYWJvdXQgdGhhdCAKc2lu
Y2UgaXQgaXMgYnVpbHQgYWdhaW5zdCBRVCA1LjE1CgoKCk9uIDEwLzIyLzIyIDE1OjA4LCBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEhvd2R5LAo+Cj4gV2VsbCB0
aGUgaXNzdWVzIEkgaWRlbnRpZmllZCBhcmUgb25seSByZWxhdGVkIHRvIEtvbnNvbGUuIFdpdGhv
dXQgZmlyZSB0aGUgcHJvcGVyIGV2ZW50cyBvcmNhIGlzIG5vdCBhYmxlIHRvIHJlYWN0LiBPbmNl
IHRob3NlIGdvdCBmaXhlZCB3ZSBjYW4gb3B0aW1pemUgaXQuIEkgd2lsbCB0YWtlIGEgbG9vayBh
dCB0aGlzIGluIHVwY29taW5nIGRheXMuCj4KPiBDaHJ5cwo+Cj4+IEFtIDIyLjEwLjIwMjIgdW0g
MTU6NDkgc2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgt
bGlzdEByZWRoYXQuY29tPjoKPj4KPj4g77u/T25seSBvbmUgd2F5IHRvIGtub3cgZm9yIHN1cmUs
IHdvcmsgb24ga2RlIGFjY2Vzc2liaWxpdHkgaGFzIGJlZW4gcmVjZW50Cj4+IHNvIG1heWJlIG9y
Y2EgY2FuIGJlIGFkanVzdGVkIHRvIGV4cGxvaXQgdGhhdCB3b3JrLgo+Pgo+Pgo+Pgo+PiBKdWRl
IDxqZGFzaGllbCBhdCBwYW5peCBkb3QgY29tPiAiVGhlcmUgYXJlIGZvdXIgYm94ZXMgdG8gYmUg
dXNlZCBpbgo+PiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4+IHNvYXAsIGJhbGxvdCwganVyeSwgYW5k
IGFtbW8uIFBsZWFzZSB1c2UgaW4gdGhhdCBvcmRlci4iCj4+IC1FZCBIb3dkZXJzaGVsdCAoQXV0
aG9yLCAxOTQwKQo+Pgo+PiAuCj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

