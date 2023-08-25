Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C431F78840F
	for <lists+blinux-list@lfdr.de>; Fri, 25 Aug 2023 11:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692956981;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bZ5TgpzFCDFliZOVjRuVcvdIOHiO1G3a/bfaQIChY14=;
	b=U+rahyhLZsOMe2mS0b+na84nftSHrH0HgyOMv1NH2cDk9PVQJ/8RwyrG4vpCLuR5JAUjJy
	GozyNrtZSeFZUtId91Nb4GgbuXIkfc6P1ZqtlX0bys/SCuSmBXoqUvv9grtKI7EDm6ZV/9
	hQai1tf0YVQ47zCNCsxgv/GL8CbwfyY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-i4DRE73hMq25-U9cJGovuA-1; Fri, 25 Aug 2023 05:49:38 -0400
X-MC-Unique: i4DRE73hMq25-U9cJGovuA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8796D10AF7C0;
	Fri, 25 Aug 2023 09:49:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7866540C2073;
	Fri, 25 Aug 2023 09:49:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C4FCF19465B5;
	Fri, 25 Aug 2023 09:49:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 25 Aug 2023 11:44:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: microknoppix download
To: blinux-list@redhat.com
References: <mailman.1740.1692953847.18723.blinux-list@redhat.com>
 <mailman.1821.1692956046.18725.blinux-list@redhat.com>
In-Reply-To: <mailman.1821.1692956046.18725.blinux-list@redhat.com>
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:oVoa/peWKf0=;IYCm0WnEO56xlOSCUmqUlF7K5+t
 A8ZSPoylGXdISrggvcEiiG3XyFVm+SwRfYqJmuoWldZw8hvu2KR9KVvA8njLdODQikfCmXPWY
 0hOcAapgRT6SmqqgG/EjR1XdyNH8hALYrZs7Y1WCb+KPBWXUBjcJuR7+gS7Kg/EpGYdrqxDJ1
 Tp4X6OHMAtx7IbYbECQvS0izWd1ZrNrBFxZ1GvEzbnRRJ+iOLfEY5vHbuSqe/7ylXRUIeljap
 wU/jsM/+iw9jKYx0h6LF0EkKGNxFHswo7JsNCpt3CuSd/3iq98EwfTsBOBjmPEeJxDy6/BPy/
 u5IywHFVQB96IAXMhvnvIxFEEWU2v+p8M0IUPmDFVrfecq3Jd8kASpDp4yTFYlRo4lVxOwMxz
 Bm6cPxLpZ2daoaAH37+czEyxL6G58e8H7h4IDOxmjBjiVfQudOyeSi90EVXF0YIMEgcricjFg
 2u7qNTLSTFAj0nRGhdF5cw1CbgsBzmUrA3qmLKfqwkEGtBKYrCHjY5Hpsi/r65M7LxjP4JMeO
 2Y/GwLGZNQDPVFFr+YtMHvtUWdWWpRDzs/pAWzbckcbhOIB0dVu6NDGBGRnT3889x8DnyS+Na
 TMcIOYHC6Ez5sQkyRIQgg5dPa49fhCnnnAdt8f5o3agk84rHED9BkXYuyJ8hF1Bq+aYcDyg2b
 KutttrlHaimY1gxQM+kK0TOvziJSeFjOGegF3lFKH2yQca1lOXI/ZPlctGtovz6wmxrF81e+R
 RVPUK5TTzWnkfvI2cBQja3YBDWrIc0rxRmMwu7lFBNHXEj5BVX8XX3w/NFVtKpwVdD8HCXCv/
 B6o/eS9K37vjLBOTzgO1fzeLCCedTcpheaAJP/e7ISAQ2HTHN57MlDh2ivSzvgOdM8btKz7KT
 KxDCbtFctXRUP6xE1eqOE/85RtzOGtGtltkEYS6/1/x227QWAvGmHTXO6pFunk9IhuBvnFW7R
 BBdSppynLlcdWSKHTn0Gz6NnNzk=
Message-ID: <mailman.1702.1692956975.18731.blinux-list@redhat.com>
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
Content-Language: de-DE
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhlIHRvcnJlbnQgZmlsZSBmb3IgbWljcm9rbm9wcGl4IEVuZ2xpc2ggaXNvIGRvd25sb2FkIGlz
IGhlcmU6Cmh0dHA6Ly90b3JyZW50LnVuaXgtYWcudW5pLWtsLmRlL3RvcnJlbnRzL0tOT1BQSVhf
VjkuMURWRC0yMDIxLTAxLTI1LUVOLnRvcnJlbnQKCkhUSApndWVudGVyCgpBbSAyNS4wOC4yMyB1
bSAxMToyOCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb246Cj4gSGV5
IEp1ZGUsCj4gdGhlcmUgaXMgYW0gRW5nbGlzaCB2ZXJzaW9uIG9mIHRoZSBzaXRlOgo+IGh0dHA6
Ly93d3cua25vcHBlci5uZXQva25vcHBpeC9rbm9wcGl4NjAtZW4uaHRtbAo+Cj4gSFRILAo+IGd1
ZW50ZXIKPgo+IEFtIDI1LjA4LjIzIHVtIDEwOjU3IHNjaHJpZWIgTGludXggZm9yIGJsaW5kIGdl
bmVyYWwgZGlzY3Vzc2lvbjoKPj4gSGFzIGFueW9uZSBnb3QgYSBkb3dubG9hZCB0aGF0IGNhbiBk
b3dubG9hZCB0aGUgbGF0ZXN0IGVuZ2xpc2ggdmVyc2lvbiBvZgo+PiBtaWNyb2tub3BwaXg/wqAg
RXZlcnlvbmUgb2YgdGhlIG1pcnJvcnMgb25seSBoYXMgZ2VybWFuIHRleHQgb24gaXQgYW5kIEkK
Pj4gZGlkbid0IHN0dWR5IHRoYXQgbGFuZ3VhZ2UgZW5vdWdoIHRvIHVuZGVyc3RhbmQgdGhlIHdl
YnNpdGUncyBjb250ZW50Lgo+PiBJJ20gaGF2aW5nIGJldHRlciBsdWNrIGRvd25sb2FkaW5nIHRo
cm91Z2ggYml0dG9ycmVudCB0aGVzZSBkYXlzIHRoYW4gd2l0aAo+PiBvdGhlciBkb3dubG9hZGVy
cyBnaXZlbiB0aGUgbG93IGdyYWRlIG9mIHZlcml6b24gZmlvcyBjb25uZWN0aXZpdHkuCj4+IHdn
ZXQgZm9yIGluc3RhbmNlIGlzIGRvd25sb2FkaW5nIGlzbydzIHRoYXQgZmFpbCBzaGEyNTZzdW0g
LWMgdGVzdHMgb25jZQo+PiBkb3dubG9hZGVkIGFuZCBpdCBkb2VzIHRoYXQgcGVyc2lzdGVudGx5
LgoKLS0KLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

