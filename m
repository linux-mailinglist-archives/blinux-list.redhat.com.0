Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 6F33B255FC0
	for <lists+blinux-list@lfdr.de>; Fri, 28 Aug 2020 19:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598635919;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hEKn+w7Q/ZRKZ55AraVPSDG1Jo5nr3MJTv3IQJHImYQ=;
	b=KFAVxZlV1h+rLy3Wg60lpw1Y14SVTKI3q3koUGMCMCg+IlrYfSwpVyiLnaLlZSHk7HnYC6
	uhfXIin+Yb19PyqJI+hfwFqEDYDG2CVyk9VZe2iKAmat5sV9qPBXx0bYnqXE6jbahbtaCp
	ZgF30C5EV5VPK3BIlKz5jhKAix966XE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-222-KJlgHHQnN6mG14nIq6hwNg-1; Fri, 28 Aug 2020 13:31:55 -0400
X-MC-Unique: KJlgHHQnN6mG14nIq6hwNg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A801E10082E7;
	Fri, 28 Aug 2020 17:31:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19CC15DA30;
	Fri, 28 Aug 2020 17:31:49 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9BCC4181A869;
	Fri, 28 Aug 2020 17:31:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07SHVcqn023289 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Aug 2020 13:31:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DE2972156A23; Fri, 28 Aug 2020 17:31:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D551E2166B27
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 17:31:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C039A18AE948
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 17:31:34 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
	[209.85.166.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-111-yd6Ai61HPESDxZcXbcq5VA-1; Fri, 28 Aug 2020 13:31:31 -0400
X-MC-Unique: yd6Ai61HPESDxZcXbcq5VA-1
Received: by mail-il1-f179.google.com with SMTP id t4so1361040iln.1
	for <blinux-list@redhat.com>; Fri, 28 Aug 2020 10:31:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
	:message-id:references:in-reply-to:accept-language:content-language
	:mime-version;
	bh=cYcdW/YnSQZoB0OOWceAewrdDhEI8d0t3P93Elur3Cs=;
	b=Dut5rSobdOj9c/U24LOKP6rZsYXwwy67mQSIeIkPWmfjLBib0fF9WYAUYJNwaoOWxL
	vz7J616VYbMEFwCRDM0bG8FIEiOcAzw7fOsxQRMadhEqwDrAEfxCyjJh9n2VRE6RA7Vd
	KZPqUov95t7sc0hO5anVmLmMOhN3yVpktaNxH9HoAPh09a9Lew85ofhep0PT2Ph54JbK
	WAd7yiCYXXLBw3U2nWg/YD88jbMF99khJdbVZPIqr+2XjlHTR00ksGwNJrWw2HAnirC4
	Gvrd7LJZr/uYkzO7mLMJioaxKt+L9Qa11P9uFQd4OB8tWmPCQ0Mjcb3tQwBfq5ujw80t
	tU/g==
X-Gm-Message-State: AOAM531W9Res8LIYWEnmYyloCfeHG92rmhWtUpDkbUQcspDTO2K382ng
	wbhceU3BxSw3Vh61sXs+VXQ6ihk+cDM=
X-Google-Smtp-Source: ABdhPJwxWPiSJDuDkshrx4dmq/hBXEwTkOusBF+TsQrZ48q/SvSeCEIfZl4m5HCOQPL2fx01BIvIzA==
X-Received: by 2002:a92:bb13:: with SMTP id w19mr2052921ili.300.1598635890657; 
	Fri, 28 Aug 2020 10:31:30 -0700 (PDT)
Received: from CY4PR19MB0136.namprd19.prod.outlook.com ([2603:1036:906:7d::5])
	by smtp.gmail.com with ESMTPSA id
	x9sm853482ior.12.2020.08.28.10.31.29 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Aug 2020 10:31:30 -0700 (PDT)
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: ORCA user guide?
Thread-Topic: ORCA user guide?
Thread-Index: AWYzMDlkPfrpJZFTEipNV6yzghXuRiRhNiRkMEQ1MzA=
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Fri, 28 Aug 2020 17:31:29 +0000
Message-ID: <CY4PR19MB01363003E9F0A651054ABDE9A7520@CY4PR19MB0136.namprd19.prod.outlook.com>
References: <02cd01d67d59$993866a0$cba933e0$.ref@yahoo.com>,
	<02cd01d67d59$993866a0$cba933e0$@yahoo.com>
In-Reply-To: <02cd01d67d59$993866a0$cba933e0$@yahoo.com>
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
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Here is the section on flat review from the orca manual:


https://help.gnome.org/users/orca/stable/howto_flat_review.html.en

There is no terminal help page as far as I know.


Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> on behalf of Linux for blind general discussion <blinux-list@redhat.com>
Sent: Friday, August 28, 2020 10:38:01 AM
To: blinux-list@redhat.com <blinux-list@redhat.com>
Subject: ORCA user guide?



[I apologize for the cross post, truly sorry if you received more than 1
copy of this]



Is there a user guide on how to use ORCA, specifically how to move around
the terminal screen?



It appears I will not be able to get speakup installed on an upcoming
installation of RHEL on my new desktop workstation, and ORCA would be the
only screen reader option, since 'yasr' and 'fenrir' is not supported by Red
Hat either.  I was able to spin up a Raspberry PI over the weekend, and was
able to get the terminal screen to read anything new, but is unable to go
back to review what is on the screen.



For those who might be curious, no I cannot have anything installed that is
not supported by Red Hat in their yum repos, and no I cannot use another
distribution other than RHEL either, so I am kind of stuck.



Lastly, for those who are interested, I have a case opened with IBM
Accessibility, and a case opened with IBM linux support team, and there
isn't much they can do beside referring me back to Red Hat.  I now have a
'feature enhancement request' opened with Red Hat to have speakup be
supported by Red Hat officially, let's hope that happens soon.



Again, thanks everyone for your advice and help this far, and thanks in
advance for any further advice and help you can provide



--David



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

