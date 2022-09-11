Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BC25B50F8
	for <lists+blinux-list@lfdr.de>; Sun, 11 Sep 2022 22:00:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1662926422;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=QKKi1kOz4eP+1IWzyY0/mQqa9/uX4WLHSfCGSD4u7vU=;
	b=UUVOkPBX04zQCMANVi916iHfK7ZxFLqGCqbxZadDEHlFAqg8SegzY54L3IrpWOk96tl+X+
	OuwV2TIMUB2ngLYoQc0OoW3dv2057TVEag8PSKMxwHuLF9rohuTQ0h0gsM13Oo6xU7z+gQ
	sW6ksckMC9HlqaezfTYTmsdw/m02vJc=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-540-DXNjZyaFNjKQfcn7VDdvSA-1; Sun, 11 Sep 2022 16:00:18 -0400
X-MC-Unique: DXNjZyaFNjKQfcn7VDdvSA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 08A24101A54E;
	Sun, 11 Sep 2022 20:00:17 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 34EF040B40C6;
	Sun, 11 Sep 2022 20:00:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8CA7D1946A47;
	Sun, 11 Sep 2022 20:00:06 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 4795214C15B1
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Daisy-player
Date: Sun, 11 Sep 2022 21:54:12 +0200
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.2 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-3.1 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
 T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on dalen.lamasti.net
Message-ID: <mailman.8282.1662926405.10503.blinux-list@redhat.com>
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIGFsbCEKCkkgZG93bmxvYWRlZCBkYWlzeS1wbGF5ZXIgdi4xMy4wIGZyb20gaHR0cDovL2ps
ZW1tZW5zLm5sLywgZGlyZWN0IGxpbms6CjxodHRwOi8vdGEudHdpLnR1ZGVsZnQubmwvZHYvc3Rh
ZmYvbGVtbWVucy9qbGVtbWVucy5ubC9kYWlzeS1wbGF5ZXItMTMuMC50YXIuZ3o+CgpXaGVuIHRy
eWluZyB0byBjb21waWxlIGZyb20gYSBGZWRvcmEgMzUgc3lzdGVtLCBJIGdldCBhIGZhdGFsIGVy
cm9yOgoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGFsc2FfY3RsLmM6MjE6CmRhaXN5Lmg6Mzg6MTA6
IGZhdGFsIGVycm9yOiBzb3guaDogbm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQogICAzOCB8ICNp
bmNsdWRlIDxzb3guaD4KICAgICAgICAgfCAgICAgICAgICBefn5+fn5+CgpJJ3ZlIGluc3RhbGxl
ZCB0aGUgc294LWRldmVsIHBhY2thZ2UuIEFueSBpZGVhIG9uIGhvdyBJIGNhbiBmaXggdGhpcz8K
ClRoYW5rcyBpbiBhZHZhbmNlLCBMYXJzIEJqw7hybmRhbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51
eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAo=

