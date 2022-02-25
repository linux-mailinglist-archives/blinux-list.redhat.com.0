Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 832704C4B04
	for <lists+blinux-list@lfdr.de>; Fri, 25 Feb 2022 17:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645807253;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fNYzzh/1f5RFDeceYRqBsIoYEfk2rpF0nUEciv9nAZ4=;
	b=jStZVhd8CsgZUrico9ehfNIfPWKYAjA6h+g4hYyz2Og3aaeGFy8HcQQaY1Abe/cifNuYBs
	pv1LKFJhAmIMRX79ZOPKaj2F/jNYGDSMQCGzCfJ3fYYyhEeBMbJ2IkECCqw278LEa8TQiz
	M5SXolkPdWziFCCitP6ancrMs+jAhyI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-635-cdIVzE6GODOIBMj08DLYMw-1; Fri, 25 Feb 2022 11:40:52 -0500
X-MC-Unique: cdIVzE6GODOIBMj08DLYMw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 48903824FA7;
	Fri, 25 Feb 2022 16:40:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4141680009;
	Fri, 25 Feb 2022 16:40:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B17F14A701;
	Fri, 25 Feb 2022 16:40:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21PGehxo029701 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Feb 2022 11:40:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1F72E407E1CB; Fri, 25 Feb 2022 16:40:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ABFD407E1C0
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 16:40:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFB911C01518
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 16:40:42 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
	[209.85.210.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-359-PGjgF-ZPNq2S7jb0WcDiiw-1; Fri, 25 Feb 2022 11:40:41 -0500
X-MC-Unique: PGjgF-ZPNq2S7jb0WcDiiw-1
Received: by mail-pf1-f173.google.com with SMTP id z16so5152082pfh.3
	for <blinux-list@redhat.com>; Fri, 25 Feb 2022 08:40:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=ehbSMl2GGyKWb0ljbChmwvXGpPYr7ygqKFtiRRrHTMQ=;
	b=takLd0wBEpGx8GOBY6lX4GASxGa8XrBhNd7n73eNbPZLTKmPWH+HyW+ePGz7hCqKpZ
	f1XywX1OqvN0LAkwLSmt1HMfPbdgCt11KWTpMRFnTkuZBsnqk0QqWBuO2kBgdu2K04g5
	SuBtKNLZ0bW5Efb5zkWsqBrrCB4B5+Aq6hHzpzpb0MIWSOr9k3ETqN9wXRmFg7PtTaUp
	TOYc6dJC40Wvf5/uikXxVyKaUW2Ibg4zL4QevYewSZBgNYN5P2LYm+D2HGBhmnqDmQ/J
	6GQMfi7mfZSC+fZ69VfZM92qNTK8IntiBN666uHWaeFZF4tHO9naCUUlEwk4pv2NxHYv
	kDew==
X-Gm-Message-State: AOAM530lPXgwNI5iDwyvn8ilDq0rJfHya4282kq9xAoBsZu5GJymcOI0
	QbS7BHbxjnGLOqYSAauSAf8ryFPnP+Pt2w==
X-Google-Smtp-Source: ABdhPJwYjd9B1v55R9tuKyDimWSsTb+eNid3PP0ZNHOL4v/P6Bmjd+u9Yn5wI2Rat+Hsvb97aBRi/Q==
X-Received: by 2002:a05:6a00:1310:b0:4ca:cc46:20c7 with SMTP id
	j16-20020a056a00131000b004cacc4620c7mr8333514pfu.44.1645807239730;
	Fri, 25 Feb 2022 08:40:39 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	be6-20020a656e46000000b0036c7c63e915sm3017274pgb.48.2022.02.25.08.40.39
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 Feb 2022 08:40:39 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Voting: Which game would you like to have on Linux?
In-Reply-To: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
Date: Fri, 25 Feb 2022 08:40:38 -0800
Message-Id: <FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21PGehxo029701
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You don't say much about the nature of the "RTK library for Linux" or provide a link for more information.  I tried looking it up, but found only information on these libraries:

	RTKLIB: An Open Source Program Package for GNSS Positioning
	http://www.rtklib.com/

	The Reconstruction Toolkit (RTK)
	https://www.openrtk.org/

Neither of these seems particularly relevant to game programming...

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

