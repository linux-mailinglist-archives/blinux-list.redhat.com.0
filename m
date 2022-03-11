Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B172E4D5DAD
	for <lists+blinux-list@lfdr.de>; Fri, 11 Mar 2022 09:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646988341;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jxH3e/+wU7/ff7oSrNrK37d8zWhQZbD2MoIEBPSPOEI=;
	b=Z+DH6v/wU26U4n6Ns10rnUR7DioQO/uMZ50yOMuKPn7a7yWXb1HC5PTkKhHsRAH5NGQga6
	wlttqnY+FtqlSYYafG0UuBXX3ZvCt1wnmQLH4TQkMimJczqWD762DKUeATmXmbUp2WXfV1
	GB4QkWEaavEFDsJGL4M2nAFLcndFsrM=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-205-tIe5GxteOa2MspRjSVM-mA-1; Fri, 11 Mar 2022 03:45:40 -0500
X-MC-Unique: tIe5GxteOa2MspRjSVM-mA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C3074380390F;
	Fri, 11 Mar 2022 08:45:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 637242166B26;
	Fri, 11 Mar 2022 08:45:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AFDEE1940349;
	Fri, 11 Mar 2022 08:45:33 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 11 Mar 2022 03:45:28 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: timidity question
References: <mailman.1206.1646923298.111209.blinux-list@redhat.com>
 <mailman.1216.1646925508.111209.blinux-list@redhat.com>
 <mailman.1127.1646925747.111205.blinux-list@redhat.com>
 <mailman.1344.1646965435.111205.blinux-list@redhat.com>
 <mailman.1424.1646969106.111201.blinux-list@redhat.com>
 <mailman.1363.1646973593.111205.blinux-list@redhat.com>
 <mailman.1397.1646974152.111207.blinux-list@redhat.com>
 <mailman.1454.1646974650.111209.blinux-list@redhat.com>
 <mailman.1499.1646975078.111202.blinux-list@redhat.com>
 <mailman.1512.1646980334.111202.blinux-list@redhat.com>
Mime-Version: 1.0
In-Reply-To: <mailman.1512.1646980334.111202.blinux-list@redhat.com>
User-Agent: Mutt/1.4.2.3i
Message-ID: <mailman.1422.1646988332.111207.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

it seems as if timidity is working okay, but not outputting to a sound
device/target that is a correct/working one for your system?

try these three common ones?
   timidity -Os midifile.mid
   timidity -Od midifile.mid
   timidity -Oj midifile.mid

On Fri, Mar 11, 2022 at 02:31:59AM +0800, Linux for blind general discussion wrote:
> I can hear test.wav. I'm thinking to recompile timidity++ from source but 
> I can only find old version not 2.15.
> 
> On Fri, 11 Mar 2022, Linux for blind general discussion wrote:
> 
> >Date: Fri, 11 Mar 2022 00:04:24 -0500
> >From: Linux for blind general discussion <blinux-list@redhat.com>
> >To: Linux for blind general discussion <blinux-list@redhat.com>
> >Subject: Re: timidity question
> >
> >Oh OK. I didn't realize you were in fact using the same file. OK so one 
> >more shot in the dark that I just thought of. Maybe try running
> >
> >timidity -Ow -o testing.wav midifile.mid
> >
> >of course replacing midifile.mid with the name of the file you are trying 
> >to play. Then try to play testing.wav or whatever you called the resulting 
> >wav file. If it plays, then you most likely have a problem with timidity's 
> >sound output.If testing.wav is silent or does not exist, then you have a 
> >different problem not related to either the soundfont or the sound output.
> >
> >~Kyle
> >

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

