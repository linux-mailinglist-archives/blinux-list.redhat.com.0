Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BBB639315
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 02:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669425903;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lAnnLMp9mItLloGGKVn/FDDy70RFZ8zsW0h4FQ9rOo8=;
	b=YLNHJfUAtUBTco50jYKX1xJG6ewf4xdr0q5M9fwRnvrh9R6nMJQLM4U1uDHwMTX0hWdaHB
	TUh+hGtpSi72W1Qm1bS38T6OBcvIx5kYnO/Y7DwKyHuwogfSflZbESxfjOA/tIMogx473q
	ntJZzToEtoA3mc/aTQYMx3FeGpZ11OI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-605-FuGVgpitM6axN4Wf5NuvmQ-1; Fri, 25 Nov 2022 20:24:59 -0500
X-MC-Unique: FuGVgpitM6axN4Wf5NuvmQ-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A77CB101A528;
	Sat, 26 Nov 2022 01:24:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id D66CA492B08;
	Sat, 26 Nov 2022 01:24:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4920B19465A3;
	Sat, 26 Nov 2022 01:24:48 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Date: Fri, 25 Nov 2022 17:24:39 -0800
Subject: Accessible front ends for Pleroma?
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGxlcm9tYSBpcyBhbiBFbGl4aXItYmFzZWQgYmFjayBlbmQgc2VydmVyIGZvciB0aGUgQWN0aXZp
dHlQdWIgcHJvdG9jb2wuICBSb3VnaGx5IHNwZWFraW5nLCBpdCdzIGFuIGVmZmljaWVudCwgcmVs
aWFibGUsIGFuZCBzY2FsYWJsZSBzdWJzdGl0dXRlIGZvciB0aGUgTWFzdG9kb24gRmVkaXZlcnNl
IHNlcnZlci4gIFBsZXJvbWEgaGFzIGEgdmFyaWV0eSBvZiBmcm9udCBlbmRzIChha2EgY2xpZW50
cyk6CgpQbGVyb21hIENsaWVudHMgLSBQbGVyb21hIERvY3VtZW50YXRpb24gNApodHRwczovL2Rv
Y3MtZGV2ZWxvcC5wbGVyb21hLnNvY2lhbC9iYWNrZW5kL2NsaWVudHMvCgpJ4oCZZCBsaWtlIHRv
IGtub3cgd2hpY2ggb2YgdGhlc2UgYXJlIChhbmQgYXJlIG5vdCkgYWNjZXNzaWJsZSwgY29udmVu
aWVudCwgZXRjLiAgRG9lcyBhbnlvbmUgaGF2ZSBhbnkgY2x1ZXMgdG8gb2ZmZXI/CgotcgoKUmVm
ZXJlbmNlcwoKQWN0aXZpdHlQdWIgLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9BY3Rp
dml0eVB1YgoKRWxpeGlyIC0gaHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvRWxpeGlyXyhw
cm9ncmFtbWluZ19sYW5ndWFnZSkKCkZlZGl2ZXJzZSAtIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9y
Zy93aWtpL0ZlZGl2ZXJzZQoKTWFzdG9kb24gLSBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lr
aS9NYXN0b2Rvbl8oc29mdHdhcmUpCgpQbGVyb21hIC0gaHR0cHM6Ly9wbGVyb21hLnNvY2lhbC8s
IGh0dHBzOi8vZG9jcy1kZXZlbG9wLnBsZXJvbWEuc29jaWFsLwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAo=

