Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 89793759A77
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jul 2023 18:08:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1689782905;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qf0+anovkj9/7i2m18vofMyhxv+LpKHdbB93MGzBC7c=;
	b=OqGWUFZb6ZteMDL4QIQOpoBPvMOMpjxERhk2LwkKzrPewH8bGPr2kkZjA7yAS8J75M6r0M
	cm/laCHQUFDODtOsnKTDqgTO0xUJIz0mDsQ/6YVCrbggZj+96gsZDFP0ld8WJype5T0RJk
	nIqsbDBDFjRkxYj8fwSq81obWa3XdHo=
Received: from mimecast-mx02.redhat.com (66.187.233.73 [66.187.233.73]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-625-7VrxXzu-NO6umPrFRnhoqg-1; Wed, 19 Jul 2023 12:08:18 -0400
X-MC-Unique: 7VrxXzu-NO6umPrFRnhoqg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4DC423C0C499;
	Wed, 19 Jul 2023 16:08:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 599D640C206F;
	Wed, 19 Jul 2023 16:08:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9244819465B6;
	Wed, 19 Jul 2023 16:08:11 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 19 Jul 2023 17:58:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: Mint Installation?
To: blinux-list@redhat.com
References: <mailman.1180.1689778383.687817.blinux-list@redhat.com>
 <mailman.1100.1689780613.687810.blinux-list@redhat.com>
 <mailman.1403.1689781438.687815.blinux-list@redhat.com>
In-Reply-To: <mailman.1403.1689781438.687815.blinux-list@redhat.com>
Message-ID: <mailman.1448.1689782891.687815.blinux-list@redhat.com>
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSmVzc2ljYSwKCkkgYW0gbm90IENoaW1lIGJ1dCB3aWxsIGFuc3dlciBub25ldGhlbGVzcyA7
KQoKVGhlIHJlcG9zaXRvcnkgaXMgaGVyZToKaHR0cHM6Ly9naXRodWIuY29tL21seXRsZTQyMTgv
cG9kLWthc3QtcnVzdApUaGUgaXNzdWVzIGFscmVhZHkgcG9zdGVkIHRoZXJlOgpodHRwczovL2dp
dGh1Yi5jb20vbWx5dGxlNDIxOC9wb2Qta2FzdC1ydXN0L2lzc3VlcwpUbyBvcGVuIChzdWJtaXQp
IGEgbmV3IGlzc3VlIGNsaWNrIG9uIHRoaXMgbGluazoKaHR0cHM6Ly9naXRodWIuY29tL21seXRs
ZTQyMTgvcG9kLWthc3QtcnVzdC9pc3N1ZXMvbmV3CgpCZSBhd2FyZSB0aGF0IHRvIGJlIGFsbG93
ZWQgdG8gcGVuIGFuIGlzc3VlIHlvdSBuZWVkIHRvIGJlIHJlZ2lzdGVyZWQgdG8gR2l0SHViCmFu
ZCBjb25uZWN0ZWQgdG8geW91ciBhY2NvdW50IChzaWduZWQgaW4sIGluIEdpdEh1YiBwYXJsYW5j
ZSkuIElmIHRoYXQgaXMgbm90CnRoZSBjYXNlIGNsaWNraW5nIHdpbGwgYnJpbmcgdXAgYSBidXR0
b24gYWxsb3dpbmcgeW91IHRvIHNpZ24gdXAuCgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3Bh
aWVyClNsaW50IG1haW50YWluZXIKZGlkaWVyYXRzbGludGRvdGZyCgpMZSAxOS8wNy8yMDIzIMOg
IDE3OjMzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4g
SGksCj4gT2ssIEkgY2FuIGRvIHRoYXQuCj4gV2hhdCB3b3VsZCBJIHB1dCBpdCB1bmRlcj8KPiBJ
IHNpbmNlcmVseSBhcG9sb2dpemUsIGJ1dCBJJ20gbm90IGFsbCB0aGF0IGZhbWlsaWFyIHdpdGgg
R2l0SHViLgo+IEkgZG9uJ3QgZXZlbiB0aGluayBJJ3ZlIGZpbGVkIGFuIGlzc3VlLgo+IAo+IAo+
IFRoYW5rcywKPiBKZXNzaWNhIERhaWwKPiAKPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+
IEZyb206IEJsaW51eC1saXN0IDxibGludXgtbGlzdC1ib3VuY2VzQHJlZGhhdC5jb20+IE9uIEJl
aGFsZiBPZiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uCj4gU2VudDogV2VkbmVz
ZGF5LCBKdWx5IDE5LCAyMDIzIDExOjEyIEFNCj4gVG86IExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4gQ2M6IGNoaW1lQGh1YmVyLWh1
bXBocmV5LmNvbQo+IFN1YmplY3Q6IFJlOiBNaW50IEluc3RhbGxhdGlvbj8KPiAKPiBXZWxsIEpl
c3NpY2EsIEkgYW0gc2F2aW5nIHlvdXIgY29tbWVudHMgZm9yIFNhdHVyZGF5LCB3aGVuIEkgd29y
ayB3aXRoIE1hcmMgYWdhaW4uIE1heWJlIGEgZmFzdGVyIHdheSB3b3VsZCBiZSBmaWxsaW5nIG91
dCBhbiBpc3N1ZSBvbiBoaXMgZ2l0aHViIHBhZ2UuIAo+IFRoYW5rcyBpbiBhZHZhbmNlCj4gQ2hp
bWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

