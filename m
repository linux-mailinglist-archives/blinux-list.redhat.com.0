Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BE616482848
	for <lists+blinux-list@lfdr.de>; Sat,  1 Jan 2022 20:08:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641064093;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6YpFFkrcbN5uBFufLMd8t0f1n1vAI7Q+obKRyN+zyog=;
	b=HV9x3XtzoW+6WWhrXD2ukXA2nlj1TtHw6lSADDZ9pQpfz0bqk/X3HsxYkCrwjnq+1ho98Y
	f7l1aN3gGEQmHtU+dOsP+9jt8ryJ/jNgYIdRLKc23Ncdw81S/kPDpPcE6gJFGf22bLX3kc
	oc50S3op7pA/zDacGsr67pvOuC6vesA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-312-wg4wWSZ7PFCM1TDQfZ1AHg-1; Sat, 01 Jan 2022 14:08:09 -0500
X-MC-Unique: wg4wWSZ7PFCM1TDQfZ1AHg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DCA3D801B2A;
	Sat,  1 Jan 2022 19:08:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B23C60843;
	Sat,  1 Jan 2022 19:08:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4DAA24BB7C;
	Sat,  1 Jan 2022 19:07:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 201J7VR0013989 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 1 Jan 2022 14:07:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 251AA492CA6; Sat,  1 Jan 2022 19:07:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1FAF5492CA5
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:07:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAB063806721
	for <blinux-list@redhat.com>; Sat,  1 Jan 2022 19:07:30 +0000 (UTC)
Received: from mxd2.seznam.cz (mxd2.seznam.cz [77.75.76.210]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-387-bCIXaLPLPoOnLKkIAxw58g-1; Sat, 01 Jan 2022 14:07:29 -0500
X-MC-Unique: bCIXaLPLPoOnLKkIAxw58g-1
Received: from email.seznam.cz
	by email-smtpc14b.ng.seznam.cz (email-smtpc14b.ng.seznam.cz
	[10.23.14.165]) id 751b783860832b6274f18924;
	Sat, 01 Jan 2022 20:07:27 +0100 (CET)
Received: from [192.168.1.142] (host-213-235-142-85.ip.topnet.cz
	[213.235.142.85])
	by email-relay21.ng.seznam.cz (Seznam SMTPD 1.3.134) with ESMTP;
	Sat, 01 Jan 2022 20:07:24 +0100 (CET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Recovering shift deleted data
Message-ID: <7c2c5806-4581-dc53-8e4e-750d9098398b@seznam.cz>
Date: Sat, 1 Jan 2022 20:07:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
X-szn-frgn: <true>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,

is some way to recovery shift deleted items? I've deleted my New year 
Fireworks. I didn't want, it was accident. I have Raspberry Pi 4B 4 GB, 
128 GB card. A that I have installed Ubuntu Mate and data partition. Is 
some way to recovery it? I've didn't restart yet.

Thanks a lot.

Best regards

Vojta.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

