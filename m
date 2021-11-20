Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 16521457A7C
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 02:49:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637372993;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5eJvj0barDBT0nyJQnrFATkrCvSl0JUoxLV4IXtHHuw=;
	b=WnRnOmXXmyGgSfuDorRNs8NCmZaMvxu6O7I5rWYeP3shfwB2j+2oCJhy9kZrblNF5e56cX
	QYcACHV8/kHKuLQ5wlCHCF82zo5BL329Hg8BUdvYu/tkVSVGSy6Mp2+AiYMiF4r5ebf7AZ
	4SV0e4xu6xz9WyCFHl0nJyRAD4MVTg0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-293-5Ue7iaz_PsaFMP-zzpJiOw-1; Fri, 19 Nov 2021 20:49:51 -0500
X-MC-Unique: 5Ue7iaz_PsaFMP-zzpJiOw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6273B1851723;
	Sat, 20 Nov 2021 01:49:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D1D5019739;
	Sat, 20 Nov 2021 01:49:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F6CD1832E81;
	Sat, 20 Nov 2021 01:49:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AK1ncs3006013 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 20:49:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 456D61121318; Sat, 20 Nov 2021 01:49:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4187C1121315
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 01:49:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 718068032EB
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 01:49:35 +0000 (UTC)
Received: from st43p00im-zteg10063401.me.com (st43p00im-zteg10063401.me.com
	[17.58.63.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-550-B7iaCNWhNzKPgVQd3G4_Ag-1; Fri, 19 Nov 2021 20:49:33 -0500
X-MC-Unique: B7iaCNWhNzKPgVQd3G4_Ag-1
Received: from [192.168.0.39] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-zteg10063401.me.com (Postfix) with ESMTPSA id BBBCB4A069E
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 01:49:32 +0000 (UTC)
Subject: Have anyone tried SystemBack
To: Blinux-list@redhat.com
Message-ID: <cfef8739-94c7-94a2-082f-c6b1c7a37698@icloud.com>
Date: Fri, 19 Nov 2021 20:49:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.790,
	17.0.607.475.0000000_definitions?=
	=?UTF-8?Q?=3D2021-11-19=5F16:2021-11-17=5F01, 2021-11-19=5F16,
	2020-04-07?= =?UTF-8?Q?=5F01_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	clxscore=1015 mlxscore=0
	suspectscore=0 phishscore=0 malwarescore=0 mlxlogscore=983 adultscore=0
	bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2111200008
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I wish I could make a live disk of my currrent system.

I found this online.


To install systemback on Ubuntu 18.04/19.10/20.04

Systemback is not supported in 18.04/19.10/20.04. Its binary for Ubuntu 
16.04 is compatible so we can run the following command to install 
Systemback on the newer versions on Ubuntu.



Note: Install with the accepted risk of running the old version.
First remove the nemh PPA if you already installed:

$ sudo add-apt-repository --remove ppa:nemh/systemback
Now import the GPG signing key which is available in launchpad as follows:

$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 
382003C2C8B7B4AB813E915B14E4942973C62A1B
To add the PPA, type:

$ sudo add-apt-repository "deb 
http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main"
Next update the system and install systemback:

$ sudo apt update
$ sudo apt install systemback
Restore points

Restore points work similar to the restore points in Windows, the 
application will create a snapshot of the current system and save it to 
disk, so you can restore it any time if it is needed.

To create a restore point you need to open Systemback GUI by running the 
systemback command:

$ sudo systemback
And it will look like this:

systemback restore
Now you simply have to press the "Create New" button (marked with blue 
in the screenshot) to create a system restore point. It will open a 
window that it will look like this:

systemback restore point
After it's finished, when you need to restore the system to that point, 
all you have to do is select the point from the left side and click 
"System Restore" button on the right side (both marked with yellow on 
the above screenshot) and it will restore your system to that point.

The system restore window will look like this:

systemback system restore
As you can see you have a few options, to either restore the full system 
or just restore the system files or user configuration files, depending 
on what you need to get back.

Note: You can also use the Schedule button from the main menu to 
automatically create restore points at a set interval.

Live system create

You can use the "System Copy" button to create a full copy of your 
system in case you needed, but the really nice feature it's the "Live 
system create" feature, this will create a live image of the current 
system that you can burn on a DVD or copy to a usb disk and boot it on a 
computer directly from that device.

To create one you need to click the "Live system create" and it will 
open the following dialog:

systeback live system
 From here all you need to do is select the destination directory and 
click the "Create new" button. Conveniently after the Live image is 
created you can click the "Write to USB" button to copy the content on a 
USB stick that you can use to boot from or "Convert to ISO" that will 
create a ISO file that you can burn on a CD or DVD to boot from.

Systemback is a nice little utility that makes backups easy and 
convenient to set up.

Thanks,

Rob



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

