Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C5B763EEAB9
	for <lists+blinux-list@lfdr.de>; Tue, 17 Aug 2021 12:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1629195272;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9YFol8xdfRtGCfbDmzw2HmoiK/IhKBZqJSIiFnMoNH4=;
	b=iAeCKe0vnIhxolWIEojNQsxTQMUD8xVuyFDh/FjHnLusPQB/lm2F6GiDbM/D12sEPiFP8c
	wpz8UrOjj8Jrw0Zb/kjDvR0bym4gb5wQ38QT5KRspuJW+odgkSQVwIAodYKmK8stR05042
	EvBgW+jPSyfB9TEsv63CVve6k8zkKQw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-270-smdgTEHjO8y2xltmrJT8RQ-1; Tue, 17 Aug 2021 06:14:31 -0400
X-MC-Unique: smdgTEHjO8y2xltmrJT8RQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F1E418799ED;
	Tue, 17 Aug 2021 10:14:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 35C2260C0F;
	Tue, 17 Aug 2021 10:14:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7F0494A7C8;
	Tue, 17 Aug 2021 10:14:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17HA6p2k030734 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 17 Aug 2021 06:06:51 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 01DBD214181B; Tue, 17 Aug 2021 10:06:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F16852141819
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 10:06:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9F1C08D1390
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 10:06:46 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-317-2g4yWJyWPF-GxFllKF6Ibw-1; Tue, 17 Aug 2021 06:06:44 -0400
X-MC-Unique: 2g4yWJyWPF-GxFllKF6Ibw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GpmsH4VYLz48c3
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 06:06:43 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GpmsH2Bzdzcbc; Tue, 17 Aug 2021 06:06:43 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GpmsH1qRtzcbP
	for <blinux-list@redhat.com>; Tue, 17 Aug 2021 06:06:43 -0400 (EDT)
Date: Tue, 17 Aug 2021 06:06:43 -0400
To: blinux-list@redhat.com
Subject: what did I do wrong?
Message-ID: <alpine.NEB.2.23.451.2108170606100.4724@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

#!/usr/bin/env bash
# file: bbc.sh
PS3="Enter a number to Choose station: "
select station in bbc1 bbc-1-extra bbc-2 bbc-3 bbc-4 bbc-4-long-wave-and-shipping bbc-4-extra bbc-5 bbc-6 bbc-world-service quit
do
    case $REPLY in (
        case 1)
	     mpv http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-mp3-a/format/pls/proto/http/vpid/bbc_radio_one.pls
	     ;;
	 case 2)
		mpv http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-mp3-a/format/pls/proto/http/vpid/bbc_1xtra.pls
		;;
	      case 3)
		     mpv http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-mp3-a/format/pls/proto/http/vpid/bbc_radio_two.pls
		     ;;
		   case 4)
			  mpv http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-mp3-a/format/pls/proto/http/vpid/bbc_radio_three.pls
			  ;;
			 			case 5)
						       mpv http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-mp3-a/format/pls/proto/http/vpid/bbc_radio_fourfm.pls
						       ;;
			     case 6)
				    mpv http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-mp3-a/format/pls/proto/http/vpid/bbc_radio_fourlw.pls
				    ;;
				    				  case 7)
									 mpv http://stream.live.vc.bbcmedia.co.uk/bbc_radio_four_extra
									 ;;
									 				       case 8)
														      mpv http://stream.live.vc.bbcmedia.co.uk/bbc_radio_five_live_online_nonuk
														      ;;
														      case 9)
															     mpv http://stream.live.vc.bbcmedia.co.uk/bbc_6music
															     ;;
															     case 10)
																     mpv http://stream.live.vc.bbcmedia.co.uk/bbc_world_service
																     ;;
																     case 11)
																	     break
																	     ;;
																	     																     esac
															     done

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

