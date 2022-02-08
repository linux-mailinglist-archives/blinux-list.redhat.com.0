Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6834AE4DB
	for <lists+blinux-list@lfdr.de>; Tue,  8 Feb 2022 23:44:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644360270;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4iWcoV0ZNcIzm/+/eB2oVCUS22amkjFS4IV9FHq3sd8=;
	b=IXrdHmkpw8i0XRiOIiANRIPRQe6UjvIUjKdCK+gPZED8hCI30OXx+SZyLJBXM7ZEDAZOLh
	HYU8fNh8/5YWEzfanRQhLdoGe8Vy9qwltZo1i25uUfiEWJjcxem8vkT8/EOLRF9TYk+2Ae
	Vs4RDUJhNXseqd7L02CQjTIN67tqX7M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-5SVttBz9N4m7_PH6en71Ew-1; Tue, 08 Feb 2022 17:44:21 -0500
X-MC-Unique: 5SVttBz9N4m7_PH6en71Ew-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECEE981460A;
	Tue,  8 Feb 2022 22:44:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CEB55108B6;
	Tue,  8 Feb 2022 22:44:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AD306473A4;
	Tue,  8 Feb 2022 22:44:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 218B7qIl005359 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 06:07:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 89FAD401DB6; Tue,  8 Feb 2022 11:07:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 839A5401E48
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 11:07:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B8B8801E8D
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 11:07:52 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-10-2kUPnQVLOAqIGw0CjRH6SQ-1; Tue, 08 Feb 2022 06:07:50 -0500
X-MC-Unique: 2kUPnQVLOAqIGw0CjRH6SQ-1
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx004
	[212.227.17.184]) with ESMTPSA (Nemesis) id 1MvbBk-1o8nkQ3ySc-00sc4e
	for <blinux-list@redhat.com>; Tue, 08 Feb 2022 12:07:49 +0100
Message-ID: <20220208.110845.007.12@[192.168.1.100]>
To: blinux-list@redhat.com
Subject: YT-dlp help
Date: Tue, 08 Feb 2022 05:08:45 -0600
MIME-Version: 1.0
User-Agent: POP Peeper Pro (5.2.2.0)
X-Provags-ID: V03:K1:YgktXAJCdOGBrrzjcqeqb1mdxqvfX2zGN4tNNGFq1hGDnasIntU
	VREoV7mDHI4PipFR5b6pxRoc3D814X9aRkWA/2ItyJyawkFqWP2yYzQDFEuKdZ25/XM041p
	jKaFxglDVMwTHJRbn+ixRje8EPIJvX6fGkO1cnoteADb7cbK+mfQSQoOEpqAveBJ3sWcxaj
	iIeoGGVxl4eHTrlg8JmXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:k7q+p9s2vD8=:B7LjVbFatgcAEipRS9fm88
	ysQc42TQiBMMVWGeI6ldLXzR5VrXSbPDAkCwtXrGWn2tMbG0sxQ89RH5ZhPjupRU9sfUz3Ths
	wGBFMPdsfi/7JgqtS+QmfNyvD9s4oIheXtRk+rX/QycD8ZWzba7I00PmshMk5e3Htyhj8gIEd
	ofe6aI6VrrWUna4Xt5RyrVA3mJoV8ab1pPBE50LokRygD+Md8S6Mb+D8Nlik99s2IxfgdR2aZ
	a5M1GvGYadJWwSrsz2v42TnxwUgBdLdDiHlYcBFZ0YZABdTLI0jcVGVmRbsdQ1Y0aD2JwRL4X
	hQpAIJ1Wc7nnnjMfiMMvQILUjhp34o1OjrXI2G0w6NZjXUpzExJvk1FG7Dnl0vCHeJGT7FimA
	Zpy4IQkiS1FHgD3wZf4Sy4Hm2EGvH+BAvBms4xnYj4L1PT58lruPg1tznoxy9ZtULR5feXV6J
	9JNs7Ql+e03cX0K2GjrOyViM6vC7O4Z7GxbNZYdF/PIcR4tfQGL0eq/mmq8bNjV9NyHwAnvS5
	88Nv1/HA3gLMdVtXi6VrB0o55bRHGO7/vbcSSBI/U3WXvb7G/LbpAMKStUcbGy6c1/lxlrCAY
	1dSQABG58reXVXaib2ffkkRXPRWefpJmV1IJv1qnakl9Dd3fhcYcKItTLxnJLK3Ltqd9aeBdZ
	Fo7gKlQ9HZTBs/+NA3NXAqN65OH3qN7afFUoPbQjTEXop0wx5fkLs5nsoD39R9Ej5RX/uNJ1i
	7lZqPfScBHVdefrqRELgmsnu5IaxUTC7qzJHPb/iqIHRLn+3CD0dZKq4QeyCv1ALhzxJu+n7R
	rllKwCzm+NU9VCRgPuB/QhAsGHhsRbLEc0OVf+5OzFd0GZ4D6G4nrDt6Ix/DUlFbdjGLdQkj+
	4KVTbY8tDRC0JP0lWJL2LQxMWOpFMdYjeEJ+xPjruYuPTKtUMbfS6kCQkopQvhyP3CaNyGAW6
	U/oh8IGGZFRVMqPb9UUOZNod4pEDUulB7oiXSEezWVWO4M7N2Pdr/M+LGBMe7W/ppZCKSMTDA
	FKcCI+pbtht1+UqMsv4hJ4Dc6hbXorEnLKzQdW/hDzU9yAoNPf6V8+JHKD7hYWKegtGPHGdAi
	ilD6dTXWOJjVcE=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 218B7qIl005359
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

So there's a page on youtube and I want to get a listing of all the videos on it complete with urls. I want to be able to download most of them, but not all, so I want to be able to cherry pick through the list, copyt he urls to a text file, and download the ones I want with the -a option.

There's --flat-playlist but this doesn't actually seem to do anything. Is there a way to do what I want?


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

