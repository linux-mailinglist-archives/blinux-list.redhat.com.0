Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B20594BA7
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 02:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660610006;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qCxUZwCshEwG+OFVommk3CIwHsSUYI/wWCAtTaJu3Xo=;
	b=H54Cqmpwwkjd4RO8Vuwf+L3DGoyvdsZlFQoAhx0ZoAUcgLlPvAfy8THmiRipl0YnSa25YO
	U6OBeGRjRAAGzACAAexeU0G1dIQHEzPw8YCwoTz5RuwCrS9611R/+P0hJ66tKNXd2qvYlg
	9RItu/9uUDS9xqxqw4NEhSindU6c83o=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-502--nbD7lniM3K3CfkXJknODQ-1; Mon, 15 Aug 2022 20:33:22 -0400
X-MC-Unique: -nbD7lniM3K3CfkXJknODQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7832E1C04B4B;
	Tue, 16 Aug 2022 00:33:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 23583945DD;
	Tue, 16 Aug 2022 00:33:21 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5AC661940352;
	Tue, 16 Aug 2022 00:33:20 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Impossible to know sender info
In-Reply-To: <mailman.750.1660608876.10499.blinux-list@redhat.com>
Date: Mon, 15 Aug 2022 17:33:10 -0700
References: <mailman.708.1660592109.10505.blinux-list@redhat.com>
 <mailman.703.1660592414.10507.blinux-list@redhat.com>
 <mailman.770.1660603181.10501.blinux-list@redhat.com>
 <mailman.731.1660603954.10502.blinux-list@redhat.com>
 <mailman.750.1660608876.10499.blinux-list@redhat.com>
To: blinux-list@redhat.com
Message-ID: <mailman.792.1660609999.10506.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SnVzdCBpbiB0aGlzIHRocmVhZCwgSSd2ZSByZWNlaXZlZCBtZXNzYWdlcyB3aXRoIHNpZ25hdHVy
ZXMgc3VjaCBhcyAiQWwiLCAiSm9lbCBSb3RoIiwgIkpvxb5lZiIsICJTYW11ZWwiLCBhbmQgIlRp
bSIuICBBbHRob3VnaCBJIGFwcHJlY2lhdGUgdGhlIGZhY3QgdGhhdCB0aGUgbWVzc2FnZXMgYXJl
IHNpZ25lZCwgSSdkIGxpa2UgdG8gcG9pbnQgb3V0IHRoYXQgZmlyc3QgbmFtZXMgYXJlIGhhcmRs
eSB1bmlxdWUuICBTbywgb25lIGNvdWxkIGVhc2lseSBnZXQgY29uZnVzZWQgYXMgdG8gX3doaWNo
XyAiQWwiIHdhcyBzZW5kaW5nIHRoZSBtZXNzYWdlLiAgU28sIEkgYWx3YXlzIHRyeSB0byBpbmNs
dWRlIG15IGxhc3QgbmFtZSwgYXMgd2VsbC4KCi0gUmljaCBNb3JpbgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo=

