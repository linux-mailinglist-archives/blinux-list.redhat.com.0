Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 84CAD362C6D
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 02:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618619477;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mHtjhaivxP1HSGolwlbWN9WaUL00bcPsZAppBNaPwBk=;
	b=C5uTu3qqk4jzRq88YutabM+Q3EkOB6sRAlmWXM7d6JNSpKbvPdBIamcHJHnLJPKELDSRsv
	LH6ZKPIJ3Aj14GiggmOTVI+X6JOJIcsdGNplKIsblm7OV4KQXb9btBffiQSZq2jxH8Izqg
	kvgmcfuaQLJF6mUmvek+6ro5yMNMwP0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-dA8Z9sMqPDOeze92IFLIPg-1; Fri, 16 Apr 2021 20:31:15 -0400
X-MC-Unique: dA8Z9sMqPDOeze92IFLIPg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9752C10054F6;
	Sat, 17 Apr 2021 00:31:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EDD1107D5C6;
	Sat, 17 Apr 2021 00:31:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 029C244A5E;
	Sat, 17 Apr 2021 00:31:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H0V3fW021239 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 20:31:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A052B117DB3E; Sat, 17 Apr 2021 00:31:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B6B3117DB3A
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 00:30:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 365708002E2
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 00:30:58 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-459-Gci_3O9OPkKnirLYLXG9bg-1; Fri, 16 Apr 2021 20:30:55 -0400
X-MC-Unique: Gci_3O9OPkKnirLYLXG9bg-1
Received: by mail-ed1-f42.google.com with SMTP id e7so34144460edu.10
	for <blinux-list@redhat.com>; Fri, 16 Apr 2021 17:30:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
	:message-id:references:in-reply-to:accept-language:content-language
	:mime-version;
	bh=KzUMLoPE4mFd8T00bf/AXYUMAefC3rIL5Sg4WmZDRBU=;
	b=Dnz6xpfXVsdaLaogyiN2awAlIklLL8IZnEJfIzDlajUQiwqOie6PowLC0MlrdreSAc
	qA5OdjeZtgyIRHUDHGy00Aq/bMKzspH1b1JIBUqAdUVv+v8Ahto8+51O4tfaZcRh7MXl
	6RA3rOEiacmeIflcTPYXT3GxUCxq5kP+hzNB3Qgm/DR7NyNLbipgur3HMwIEcEKFXtK8
	dJzsu1hZk67jFuagXitsRkv9Fqw3PpVfIC00IgmQE05TyMadeQNZVG6lkUrEpxm0UQeN
	s40c/z7SHa1U/pjAk5XDFF/DP40NQJE8OlSDfKeViLhmmXeVNPcHYq4vclEF2h+OkJJq
	DpMw==
X-Gm-Message-State: AOAM532gBK36zk9+KOv9dJnpIh7goDvwsoTVz40BXu9IIASFasAZkD/5
	UQ/akjHKBWv1GrPb/SM0b+NUwEivZ0I=
X-Google-Smtp-Source: ABdhPJy0YabD334rK2QoqvnY6UqPhS2R7m/0/UmzxnNbdvJ4KlxmxKDJZ5+BdLUrapTNIpVUBjni4w==
X-Received: by 2002:aa7:c913:: with SMTP id b19mr13096322edt.170.1618619453918;
	Fri, 16 Apr 2021 17:30:53 -0700 (PDT)
Received: from BN6PR19MB1443.namprd19.prod.outlook.com ([2603:1036:404:114::5])
	by smtp.gmail.com with ESMTPSA id
	k19sm4997351ejk.117.2021.04.16.17.30.53 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Apr 2021 17:30:53 -0700 (PDT)
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
Thread-Topic: SL's response to all inquiries re: Readspeaker voices
Thread-Index: ATk3Mzc56xpM/iR7GeDfD6frybfFbDYzMDIxMDIzMjc4MzZhNbcDFRWA
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Sat, 17 Apr 2021 00:30:51 +0000
Message-ID: <BN6PR19MB14432B84ABFD1B730667CD41A24B9@BN6PR19MB1443.namprd19.prod.outlook.com>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>,
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
In-Reply-To: <2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Maybe he wants to think about his responses and come back to them later.  With that being said, he could save the message as a draft.

Get Outlook for Android<https://aka.ms/AAb9ysg>
________________________________
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> on behalf of Linux for blind general discussion <blinux-list@redhat.com>
Sent: Friday, April 16, 2021 8:20:44 PM
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: SL's response to all inquiries re: Readspeaker voices

Well, yes SL, I was able to make out all your concepts, but maybe you want to
try another strategy. Why not just type your comments live, with no pasting?
You can still most likely sample before sending.
Chime

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

