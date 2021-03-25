Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DC56B3499EE
	for <lists+blinux-list@lfdr.de>; Thu, 25 Mar 2021 20:03:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616699008;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=quTJD/6BTa9GusxIZqMjzDZbX4LpM0z37T83w9BK2tc=;
	b=ihZPD1kbo1pWDP8hCDNNoynd9OYXbT8KZxsEu953DQTKzzFMKWU1XuWiL/6lxfUBDh/6ip
	EEFBVvDkkiWjY/n/cWy/ggCV3uqsYr4PVV/hGf6vAFYuIyWL9s1C8jphIwp2hG6wG7wOz6
	qyncKcra0iXsoa1R1U11FOjhqz5840E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-298-ONiMU7v6PxWzm0gERlOo2Q-1; Thu, 25 Mar 2021 15:03:26 -0400
X-MC-Unique: ONiMU7v6PxWzm0gERlOo2Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42B811005D46;
	Thu, 25 Mar 2021 19:03:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 058EC19C71;
	Thu, 25 Mar 2021 19:03:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 67EE14BB7C;
	Thu, 25 Mar 2021 19:03:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12PJ31kA016001 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Mar 2021 15:03:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3F95EF8086; Thu, 25 Mar 2021 19:03:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A04AF6CD2
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 19:02:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DE1E110334AB
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 19:02:58 +0000 (UTC)
Received: from mail-out-02.crystone.se (mail-out-02.crystone.se
	[93.90.145.12]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-193-R0CC3IxSNgO_DJ83iwXbaQ-1; Thu, 25 Mar 2021 15:02:55 -0400
X-MC-Unique: R0CC3IxSNgO_DJ83iwXbaQ-1
X-Halon-ID: 8ead3b22-8d9c-11eb-83c2-005056912ff2
Authorized-sender: anders@pipkrokodil.se
Received: from smtpclient.apple (unknown [194.110.84.86])
	by mail-out-02.crystone.se (Halon) with ESMTPSA
	id 8ead3b22-8d9c-11eb-83c2-005056912ff2;
	Thu, 25 Mar 2021 20:01:51 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.80.0.2.43\))
Subject: Slint not speaking in Vmware fusion on the Mac.
Message-Id: <6AA6F9E6-D16A-4D46-8B8A-8383B3D499AD@pipkrokodil.se>
Date: Thu, 25 Mar 2021 20:01:50 +0100
To: Linux for blind general discussion <Blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12PJ31kA016001
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkhCkkgYW0gbm90IHN1cmUgd2hhdCBpcyBnb2luZyBvbiBoZXJlLgpCdXQgSSBhbSB0cnlpbmcg
dG8gcnVuIHNsaW50IGZyb20gYW4gaXNvIHVuZGVyIE1hYy4KSSBjYW7igJl0IGdldCBpdCB0byBz
cGVhayBpbiBWTXdhcmUgZnVzaW9uIGZvciBzb21lIHJlYXNvbi4KTm90IHN1cmUgaWYgdGhlcmUg
aXMgc29tZSBzZWN1cml0eSBzZXR0aW5nIG9uIHRoZSBNYWMgdGhhdCBtaWdodCBibG9jayBzb21l
dGhpbmcuCkFueSB0aG91Z2h0cy4KL0EKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0

