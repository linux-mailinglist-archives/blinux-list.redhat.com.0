Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0E5494541
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 01:59:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642640385;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9rWNb4gSddsS0Y5p4MGwtWXpok610kVbx5STHRNozGE=;
	b=MXpWbIsABI+1qBqel6O3xqDyCOH9S7IQ509uhVFNEvR1VM7naGtwUmwefFT0smNseLmsdR
	J12v/ayNlla2o8N2KNEo9wIqgGqjUMAWNvDFCGEDrBl4SYOk0A1+f7ryPjl9v/37MbxQGr
	3+cyRQzAPSheXYuONTPQEoXoPP9hzCo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-281-Cswt6BxYN-CLQXUi8ih3Ow-1; Wed, 19 Jan 2022 19:59:42 -0500
X-MC-Unique: Cswt6BxYN-CLQXUi8ih3Ow-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C3B5344B0;
	Thu, 20 Jan 2022 00:59:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D5FBE6E1E0;
	Thu, 20 Jan 2022 00:59:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6AF131806D03;
	Thu, 20 Jan 2022 00:59:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20K0ujjh014147 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 19:56:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 99803140240B; Thu, 20 Jan 2022 00:56:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 961E7141DC2D
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:56:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E44238006B1
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 00:56:45 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-154-BWU15sl2Op62xSLfu1XRmg-1; Wed, 19 Jan 2022 19:56:43 -0500
X-MC-Unique: BWU15sl2Op62xSLfu1XRmg-1
Received: by mail-pf1-f171.google.com with SMTP id 192so415340pfz.3
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 16:56:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nDCMMODfwwlgc20FlsX0nzQyqx2a2Fwf1ZSLpye4GzA=;
	b=yDVAJ01he1PnU7rBBmisxlMVGf5/3XY0yZB6sIXBll+EOqcI4ZqusuvpBn61SW+rsL
	mjlkYLKPr+Stn/6x8wld2aLaMFz6GrwABUGk2xmAWLQHZ75yIqGa8S5bICIvzbmXK4BI
	bEsq/ok7OtEq4mNW5fp0J8Y5v3xaazmAieGScXjCFfgFIns00Pc3nu7KxfTHBOTmpqow
	3bdSIMU4m17lHW5ZqcSti202jt+YkRO8VCut+opXwS9MReeKoo2q4hk7qPI04Okkz3XO
	rbusedIDBnryGGnQfAEBPqqT1qT7W4RZXmdzLFL3Rvdvg6DXWGTqtAzthNjAXSKYWHww
	nreQ==
X-Gm-Message-State: AOAM530b9TJRgVhg7X34A7DWmmY9Fs9KWWmeS0hiatSc+qYzjpOqrZNU
	a3z7zXhRaehyaZ84QzJiSDHya1Ww6cRXrdWWSPDr09rI58s=
X-Google-Smtp-Source: ABdhPJxMDDV6eMHDib9+ZbAhtgDIrRQwncdoSfKon6H9aiQFzIvhM4J/LypfpkHuE45eMuJ0KQUj3DwAiAOms+CxI2U=
X-Received: by 2002:aa7:8190:0:b0:4c0:1332:4c8f with SMTP id
	g16-20020aa78190000000b004c013324c8fmr32740882pfi.23.1642640201937;
	Wed, 19 Jan 2022 16:56:41 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 19 Jan 2022 18:56:33 -0600
Message-ID: <CABKqQvErSiA=YnCNo6MjtANW8LyqW+sQi=o_wPNPc0gTAZE5Pg@mail.gmail.com>
Subject: Running a Linux VM on Windows and making it talk?
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

In my operating systems course, we are supposed to run a Linux machine
inside Virtualbox. How is this done on a Windows machine? Can I start Orca
in the virtual machine somehow?
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

