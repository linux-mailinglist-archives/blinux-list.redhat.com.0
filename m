Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E7E4D5786
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 02:49:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646963359;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dL1lbSnbX4W3Glig1TVTH+p3iTKwN4Hnzgmq6exeGo4=;
	b=Iw6iKYF94yVykTEBkE7E7cB2Cs7HYSheNiIkBL/UZ5PDcuqu2gomg/1Stb6IxfxEwbbyq4
	mpIIPmudwrZEP5LoqRCxkROwK6PT6C6Nn96U2AqWn3VibdoBdjDt5hdzppGOjeE5wEif4+
	Gt6iZvdnyHCQmFoMLct1lYYhtMSxJo8=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-615-u8ijFPi3Nyu3u7cDTQR7kg-1; Thu, 10 Mar 2022 20:49:15 -0500
X-MC-Unique: u8ijFPi3Nyu3u7cDTQR7kg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0CD4329ABA2C;
	Fri, 11 Mar 2022 01:49:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1D14341136F8;
	Fri, 11 Mar 2022 01:49:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4F511197165E;
	Fri, 11 Mar 2022 01:49:10 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 10 Mar 2022 20:49:04 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Blinux <blinux-list@redhat.com>
Subject: YT-DLP downloading from text file help
Message-ID: <mailman.1479.1646963349.111202.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

RGVhciBMaXN0LAoKQ2FuIHNvbWVvbmUgaGVscCB3aXRoIHRoaXMgc2NyaXB0PwoKSSB3YW50IHRv
IGRvd25sb2FkIHRoZSBiZXN0IHF1YWxpdHnCoCBtcDMgYXVkaW8gb2YgbGlua3MgaW4gYSB0ZXh0
IGZpbGUuCgoKeXQtZGxwIC0tYmF0Y2gtZG93bmxvYWQgLWNpdyAteCAtLWF1ZGlvLWZvcm1hdCBt
cDMgLW8gCiIlKHRpdGxlKXMuJShleHQpcyJkb3dubG9hZC50eHQiCgpUaGFua3MsCgpSb2IKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlz
dCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

