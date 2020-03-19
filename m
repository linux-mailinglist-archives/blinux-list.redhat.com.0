Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id A7EDE18BFC9
	for <lists+blinux-list@lfdr.de>; Thu, 19 Mar 2020 20:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584644429;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2iLU+VasmOZ6YXosEWsXrQygGVDTDGdVshFLuxgGR4M=;
	b=Cj1FehOw5gMaJ6IjQcCgt1DXnRX7HdpJlWHENB2Ko4FhKOgRaenRhU87Buo+tZ0zIW0fhz
	qlUlSAoHiu2d+cJlQCUprFLE2nl5jfuk+utjXB5J75t3nybGqdfF/dvjXlC6ExBizuOLMg
	smuOK+vl1KP4Hph3cLFKY1pl4rxbJPA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-68-K12DNzSANeuoOquPmExltw-1; Thu, 19 Mar 2020 15:00:26 -0400
X-MC-Unique: K12DNzSANeuoOquPmExltw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B98B8107ACCA;
	Thu, 19 Mar 2020 19:00:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D0E3BBBFF;
	Thu, 19 Mar 2020 19:00:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C63BF94290;
	Thu, 19 Mar 2020 19:00:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02JIxxDd020058 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Mar 2020 15:00:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B992AC6103; Thu, 19 Mar 2020 18:59:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B595FC6105
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 18:59:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5AF28F68F3
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 18:59:55 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-16-8SRAkOApNyOOH9P1YPIP2g-1; Thu, 19 Mar 2020 14:59:53 -0400
X-MC-Unique: 8SRAkOApNyOOH9P1YPIP2g-1
Received: by mail-oi1-f173.google.com with SMTP id p125so3843486oif.10
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 11:59:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=0Oh4+RmqBB3jXybLVPnabIG6ClYe3gfLhltMHVyb26U=;
	b=O8ft7BGpvSzcOu/pu8tSo8zGqGZ/kXEjV2rWEjTgkCoQzP6xjjKqAwwcIvScTiGJVF
	gnJoFIAQgPO3U/m3f7dsIBH8peLuHbapjkCq466Ws4gGkg3mU2U4ku+y0qLjdPsUOt/G
	/OAToBUCDpRZekIhbQ/Sz1mclLjYrub5w2dKOWv2828+8bjZOD8vZaWR+Z++gQ5QgogR
	XCKOhw7bWvwMZDMres6JB+yZu0YHgP1tmPV0A4/41nypkOKauIV5Mzdbzv5Gq+QVIjwC
	gddgdEpYCZXDvRx57qGVcheb2fv0P/G/1zxpqSHIAFc6LozmkNful+L0L4PlPW+77XPN
	D+aw==
X-Gm-Message-State: ANhLgQ1Kb7geNtfskYbNw0gpwk2zClxIxSxAhTWCZKA2eYDCXlQ/QnzW
	U1JEHZQDHieiT+Cg0YhT4cKDFHXy
X-Google-Smtp-Source: ADFU+vv0FhF7uN2NeHLbTukc7uB8DB7gP5lJqYQiMwchtOe4lDi4OlgI3ZVQGD17VACJxkrI93+kYA==
X-Received: by 2002:aca:482:: with SMTP id 124mr3543580oie.35.1584644391986;
	Thu, 19 Mar 2020 11:59:51 -0700 (PDT)
Received: from ?IPv6:2600:1700:81f0:1c10:1878:5919:5a72:c38d?
	([2600:1700:81f0:1c10:1878:5919:5a72:c38d])
	by smtp.gmail.com with ESMTPSA id
	k185sm1117473oib.5.2020.03.19.11.59.50 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Mar 2020 11:59:50 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: What distribution will work with the virtual machine on a Mac?
Date: Thu, 19 Mar 2020 11:59:49 -0700
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
Message-Id: <8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02JIxxDd020058
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

IEhlbGxvLCBteSBzdWJqZWN0IGxpbmUgcHJldHR5IG11Y2ggZXhwbGFpbnMgdGhlIGJpZyBzaXR1
YXRpb24uICBXaGF0IEnigJltIHdvbmRlcmluZyBpcyAgd2lsbCBGZWRvcmEgd29yayBiZXR0ZXIg
dGhhbiBVYnVudHU/ICBUaGUgb3RoZXIgdGhpbmcgdGhhdCBJIGFwcGFyZW50bHkgYSBiYW5rIG11
c3QgY29uc2lkZXIsICB3aWxsIGFueSBvZiB0aGlzIHdvcmsgd291bGQgc3BlZWNoIGluIGEgdmly
dHVhbCBtYWNoaW5lIGVudmlyb25tZW50PyAgQW55IHRob3VnaHRzIGZyb20gYW55b25lPwoKU2lu
Y2VyZWx5IE1hdXJpY2UgTWluZXMuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

