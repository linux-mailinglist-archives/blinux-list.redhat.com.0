Return-Path: <blinux-list+bncBDYPVTOXSQEBB74U7WYAMGQEU3Q2QOQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3E48A7B3A
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 06:05:21 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6a049c7d190sf205256d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 21:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713326720; cv=pass;
        d=google.com; s=arc-20160816;
        b=EBFqP0w/Xki/5/F4HEqDeGh0DxR0OtFlCADnhgT0tYa09db9MK9QQ0rm6Ds2s//6PE
         ncCMpz6sitz+DMhcm5zOatRcuUr595y+igDQ4GtAqZwL/md2ZbBzECYyrLAvlN/nxwsG
         DgrCooGNmcybEuRfsmpEgaZWOBAZvc1v9cd8+73C+D5cTUY7CUCKAyqJcpm42xCQeWQ8
         yO2NmcqFpXnvQGzMnNU/paj7QxrontjIDqFVkRYzzscE1lIMmDh7tfaCVJ3n/qntmPCA
         8N4TdTgSZQq5sZaP0850KH2k7G62IRmmEbFaX5CkRNPNMsUVr3lppwJfcAz5K4wbqahf
         zMGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=Id7x2TANMfc8eFTMqmjYrGKgUDrQing7Yck+JP55gf8=;
        fh=KsNdf612ElwkxFIBz5EuCoS305rrgrax+A+1aA8f4ak=;
        b=d+FivVRgozxVjgNooL3lURSEBlE3d4fEXS3S6T3L5JN8hjg6FA+HfDZPSsijC+2mIx
         RyLHkm9vCS6Otl3djBN3LMaWRrnbPXBtvO/9NtjrodoMN+V3N0uGd5a0qHx+TF19j8LV
         sV7ba/hOYfIlZUF5kUPGE1yrWDebXoExRlbrorYOJ8FySh3MV2LGpvETp3ja2U921N0e
         mnKuxCXUKrImPLCVUi8tS2Ya+ssBCV3FxyN2OAlxCBr7PkUhqnEd18uMeBIE86h4qbx+
         Wjd9EiObJxwkI/aw/flVWcI9pLlfB+ZR3Fj/9xwAlwqehOTLJdlBtRtsyeQNEStg8hek
         cxMA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713326720; x=1713931520;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Id7x2TANMfc8eFTMqmjYrGKgUDrQing7Yck+JP55gf8=;
        b=HP7WDNwq//JA8d6NPgBsJmYH3NN6wcbKzeVmpWzJTcXgpJcPHPKD8FqPrgqEyY0MOj
         Iyl1tj9G/mSrpeKOJOFe5TIQw45bScUqriJjK7LE9o7GKi9V62nfyLYJGKYpr0p0YoAP
         bdUH8hpR7E7F6PUoXzH0E+93CaqnjMzFnMsMJPnk7lQ7Aecszg9g02265mNKNFp8WSuU
         xCOcaHu/xs1iedOkh3DSyGEjx53Tc1KLxx9WC7U9fIZDiboAiR1WcbwBdRkle0V6q1i6
         fSUAKzFXBjrG/b2m/JhhhUk0E/2+/u5m7PV3mDjwONUYlvYUIrR04VriUC5R7CUbd3o3
         9nSQ==
X-Forwarded-Encrypted: i=2; AJvYcCVW/nPKOnTxd+dGDZCVHSPrIy+UCguVzbeKh3XVTHtMsNUctDZXGwn8NyWrJK01QH46yiA1DrP82x4TIzgLstmqcqpgMbLtmziT
X-Gm-Message-State: AOJu0YwQ4XNgjQb9SmpNCY9uA+ZHcwz1EAF+uXBaJP7hD1GY8fYseiKy
	TViLJ5cNIF1lInm+DqY+zETT+PiXIP8NutGsXtuZJz7Ho7Uo1reN/ih9RVuqm9Y=
X-Google-Smtp-Source: AGHT+IF45d0y2xO1QwZeROBUKkbXZsXnsku9VfjpWbxvR6/SHj/lP5pfEUr7C+hmmaG+/WYHHpahSg==
X-Received: by 2002:a05:6214:170a:b0:6a0:423d:88ab with SMTP id db10-20020a056214170a00b006a0423d88abmr1823644qvb.8.1713326719919;
        Tue, 16 Apr 2024 21:05:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ceb:0:b0:690:c63c:5eaa with SMTP id iv11-20020ad45ceb000000b00690c63c5eaals58554qvb.0.-pod-prod-03-us;
 Tue, 16 Apr 2024 21:05:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW9tOdgN9o//5Q5W0ZNDoPEaFmhBq/34DFUdohKeUqFUxKLFh4teBDDeRXd9l3QUrN4oLUJ47CjEgpsYAQAvHJyQd3k6Eq2WWiQ8aXi
X-Received: by 2002:a05:6214:d82:b0:699:17cc:3e69 with SMTP id e2-20020a0562140d8200b0069917cc3e69mr21939792qve.61.1713326719275;
        Tue, 16 Apr 2024 21:05:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713326719; cv=none;
        d=google.com; s=arc-20160816;
        b=FBy7RJwQVwD+VkscjV2JdeIehKy8rJpmEckTxqx3XG+LRIIM7ztAqbqWnXncwEn+8S
         k2eFkpLgbePZfmyjjQINfF25anqDGD+s3G9UNa6wKWlLrwv72bi9VXKVHGZvSk6Lsewf
         DJSg69T/JBl84HJ25oxzth9pj/PuNq+RBbTYslxXj019qdIT1gAqkCTp5sYUNMO14R1T
         TG/K8vjs9HLbwbnoSSLS6R2uODQ6gw3TZ5BYkPwUWxQQD+9FCXlFWgi1U5EndvhlMRBR
         9iQnGVvbB4pvVK5f9RIRoiq1+iS7QvS5Pp6Vfn0Rv2/tuUNUX0Xt15kirHkwg1AOGmZ8
         C3Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=s0qp39Ee5jgq7uIrf4vKs8HfWkQhN5ofe5JZqdY9uo0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=kfL/y+WG52UtiZ29blHEwguyjVl9ypwlGQV2LTuKRM1MTNNOAdSrB9pWPMqzRNb+Xc
         fMQ241x5+xkWwOIy8mo9Q6TYihIOdum2EzF7/1eVn5x6EUi6DZobK94LMy5SSpq2NUD8
         3/B645Jg2eHj626nDHsOrGxNbsfoKor2s9q11AQCS3RltVzNKRFwDJ0dQBy7xX1+GO7Z
         ZYx//itS8UqJ+UZkgX8EtpYGs5Uy94fHlXiHBhBnL6a96Mh4opwXs88k5Eggz5KIKp1u
         cEFlHqQpErsinl9EwzF5sHpquAYWJZsqdZeCiMp5L3+70yCyO8VzBdmNCbpnAvXA7x9K
         z25w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id u12-20020a0cec8c000000b0069b299cf931si13669428qvo.11.2024.04.16.21.05.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 21:05:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-548-h0H_JU04PnyfY8wqoeBF9A-1; Wed, 17 Apr 2024 00:05:17 -0400
X-MC-Unique: h0H_JU04PnyfY8wqoeBF9A-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1E47080B517
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 04:05:17 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1AED1492BC9; Wed, 17 Apr 2024 04:05:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D6853492BC7
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 04:05:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8876A80B517
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 04:05:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-260-WS0rkFMjMWChU31IWCSneA-1; Wed,
 17 Apr 2024 00:05:13 -0400
X-MC-Unique: WS0rkFMjMWChU31IWCSneA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VK6kR5sT2zRrc
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 00:05:03 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VK6kR5Ydgzcbc; Wed, 17 Apr 2024 00:05:03 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VK6kR5VNGzcbC
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 00:05:03 -0400 (EDT)
Date: Wed, 17 Apr 2024 00:05:03 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: re: change timezone
In-Reply-To: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com>
Message-ID: <779bf89c-4808-0d59-4ca1-952c09d00fb2@panix.com>
References: <d2d56610-4db8-7f36-7fb5-977a4d77a1a6@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

systemd localectl if memory serves is what to use to actually change a
timezone and tzselect would be what to use to find legal timezone options.
systemd localectl set timezone and localectl can change many other things
on the system given all of its options.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 16 Apr 2024, Jude DaShiell wrote:

> Have you tried in terminal sudo tzselect yet?
>
>
> --
>  Jude <jdashiel at panix dot com>
>  "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo.
>  Please use in that order."
>  Ed Howdershelt 1940.
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

