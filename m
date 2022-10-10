Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF3C5F9AF8
	for <lists+blinux-list@lfdr.de>; Mon, 10 Oct 2022 10:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1665390484;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9v5KFkSEV4UHzR1AEgNRs8Od7rmUj3+ygGls3JWWfkg=;
	b=bN8tgHiHWZVUHzfFTl06l3zVIN6L6t1lNb+/RdP+CTcfP0i6GRoodwcPfd1ckPFjipez+L
	XNLwfBjjEBudpcz4kDmlorVEGgg5FMpZXyuQNTFyvIzb4BA058kfY69kUDfzWOkgOV/R8L
	39EUUofehbPAYcaCFlIf5XMSWwkbf68=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-510-BA-V_DohN0-0Q7odX22cjg-1; Mon, 10 Oct 2022 04:28:01 -0400
X-MC-Unique: BA-V_DohN0-0Q7odX22cjg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBFC4185A792;
	Mon, 10 Oct 2022 08:27:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 481D5B27A1;
	Mon, 10 Oct 2022 08:27:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 9DEF01946A45;
	Mon, 10 Oct 2022 08:27:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 10 Oct 2022 10:27:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: Is there a Fedora Espeakup Package?
To: blinux-list@redhat.com
References: <mailman.6271.1665338721.6083.blinux-list@redhat.com>
 <mailman.6427.1665341560.6078.blinux-list@redhat.com>
 <mailman.6772.1665385431.6082.blinux-list@redhat.com>
In-Reply-To: <mailman.6772.1665385431.6082.blinux-list@redhat.com>
Message-ID: <mailman.6702.1665390476.6080.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CgpMZSAxMC8xMC8yMDIyIMOgIDA4OjU1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIGEgw6ljcml0wqA6CgpbTGFyc10KPiBZb3UgaGF2ZSB0aGUgQlJMVFRZIHNjcmVlbiByZWFk
ZXIsIHdoaWNoIGlzIGNhcGFibGUgb2Ygb3V0cHV0dGluZyBzcGVlY2ggYXMKd2VsbCBhcyBicmFp
bGxlLiBQZXJzb25hbGx5IEkndmUgb25seSB1c2VkIGl0IGZvciBicmFpbGxlLgoKSSBkaWRuJ3Qg
dHJ5IHRoYXQsIHdvdWxkIGJlIGN1cmlvdXMgb2YgcmVwb3J0cyBmcm9tIHBlb3BsZSBoYXZpbmcg
dXNlZCB0aGlzCnNwZWVjaCBvdXRwdXQuCgpDYXZlYXQ6IEkgZG8gbm90IG93biBhIEJyYWlsbGUg
ZGV2aWNlIC0gYW5kIHdvdWxkIG5vdCBrbm93IGhvdyB0byB1c2UgaXQsIGFueXdheS4uLgoKRGlk
aWVyCi0tCkRpZGllciBTcGFpZXIKZGlkaWVyYXRzaW50ZG90ZnIKCgo+PiBJIGhhZCBhIGxvb2sg
dGhyb3VnaCB0aGUgRmVkb3JhIHBhY2thZ2Ugc2VhcmNoIHdlYnBhZ2U6Cj4+IGh0dHBzOi8vcGFj
a2FnZXMuZmVkb3JhcHJvamVjdC5vcmcvCj4+IGFuZCBmb3VuZCBub3RoaW5nLgo+PiBNb3Jlb3Zl
ciwgbm8gY29uc29sZSBzY3JlZW4gcmVhZGVyIGF0IGFsbCBpbiBGZWRvcmEuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9t
YWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

