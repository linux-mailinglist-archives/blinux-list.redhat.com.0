Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAD44AA26C
	for <lists+blinux-list@lfdr.de>; Fri,  4 Feb 2022 22:41:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644010869;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GzNdgAfVVJsYuP1yddU31UPLXBb2gVEtUCAdxSgkDNk=;
	b=JiR0zUDwf9lfyidma8Y1lieeW6z9p1eeYzrYFBElE6Xykewl9X8giYmJ/V+XtYTPHbx5GS
	20Q/vDXP5FmpLkEIcFhZo1pU46E0Z91FVIhcGtr2v5RDlu6TPDIEijwLfwJqPB7sPaGRXL
	fIMHpRM2y7GsBvmgA4nRw+hUUCMNJVs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-456-qf3nPVO2NIuhBAuXiJ2wXA-1; Fri, 04 Feb 2022 16:41:05 -0500
X-MC-Unique: qf3nPVO2NIuhBAuXiJ2wXA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0AC8410168C0;
	Fri,  4 Feb 2022 21:40:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4A7346981;
	Fri,  4 Feb 2022 21:40:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2FEA44BB7C;
	Fri,  4 Feb 2022 21:40:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 214LeVK2015280 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Feb 2022 16:40:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 505A140885D8; Fri,  4 Feb 2022 21:40:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C8FA40885BE
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 21:40:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3521C85A5A8
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 21:40:31 +0000 (UTC)
Received: from st43p00im-ztbu10063601.me.com (st43p00im-ztbu10063601.me.com
	[17.58.63.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-646-r8POugiJN22IrE9Ly0sFdg-1; Fri, 04 Feb 2022 16:40:29 -0500
X-MC-Unique: r8POugiJN22IrE9Ly0sFdg-1
Received: from [192.168.0.39] (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztbu10063601.me.com (Postfix) with ESMTPSA id DD5C08C042A
	for <blinux-list@redhat.com>; Fri,  4 Feb 2022 21:40:28 +0000 (UTC)
Message-ID: <d3189fce-4aee-cb12-9498-2e19f7692ae0@icloud.com>
Date: Fri, 4 Feb 2022 16:40:27 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
To: Blinux <blinux-list@redhat.com>
Subject: Help with YT-DLP
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
	=?UTF-8?Q?2903e8d5c8f:6.0.425, 18.0.816,
	17.0.605.474.0000000_definitions?=
	=?UTF-8?Q?=3D2022-01-17=5F04:2022-01-14=5F01, 2022-01-17=5F04,
	2020-01-23?= =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	mlxscore=0 malwarescore=0
	suspectscore=0 clxscore=1015 mlxlogscore=740 phishscore=0 adultscore=0
	bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.12.0-2009150000 definitions=main-2202040119
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

I am trying to use yt-dlp to convert YouTube video to mp3.

I installed the latest version of yt-dlp using the info below.

sudo wget 
https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O 
/usr/local/bin/yt-dlp

sudo chmod a+rx /usr/local/bin/yt-dlp

update command
yt-dlp -U

When I use the below command, I get nothing but a greater than sign.

yt-dlp -f 'ba' -x --audio-format mp3 
https://www.youtube.com/watch?v=dQw4w9WgXcQ -o '%(id)s.mp3


Thanks,

Rob


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

