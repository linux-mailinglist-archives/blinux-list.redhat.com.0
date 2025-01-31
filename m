Return-Path: <blinux-list+bncBC3NDNGRUAMRB3HB6O6AMGQEVUAQJOA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 476E4A23FDF
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 16:49:02 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8e6046f0fsf32841146d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 07:49:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738338541; cv=pass;
        d=google.com; s=arc-20240605;
        b=kSBOiv6VDBfFvyy3Bm/C5s/JRoQeE16ebrH3zXKQzmWYIERTnMKXHgb/45SzBjSmAl
         Dim9r/KITvjk/pRiR0UpQe02gFGQvMDZWmvDfOwwyURZuzWJZPblShkVav2kmprHVqRh
         BFR4Sqy/yX2BJ8LAH0h99RJYn6Z8pWJZSIiWmzPx6eo+OWrwtABZs3FXqxvoyWClUbmK
         nQSFLvDyTJd+fjpRINCxNZsKggIzz3bZc0Yxzm0fK25SDhAyiziRCGakhP/OM7bG/dfT
         YVjl4hbP+qsTATZLR2ugGYZNOzfPPh+ZJbK+8aYSmp4Rpt1c9RYIQcf0QC1kKm/fHg1x
         rZCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=gCGzEsj6zLlfLOeCZhsH6nNDDD3D+Wbn+ATlW0GbeIE=;
        fh=xFDlJftAjAW4Ly3AzVrRNzyusogjFUcaWPXAd7tiS/4=;
        b=DHVJoZRayj/KwL52IT77Ev2Ii4PrNd4vOdHNvPqcKFEcgMfOYjY9W0Sf7aG7hJzTHB
         j9UzxilsogQ4U1cHjLW4VHF6b7+e26HBuqU2e8+w6lzPI0Ksqw+m5FiG9GyBRKvYRmmN
         0zn/I0ZAP+bku90nhQa6k+W49kybISb0pfXENfeHlZQGikTC+sZyzJ1jzFotdV/NNXNF
         0PUYhhn59YhIRhdHLdjQG6pIhRUxCj0d9fgUFg4hR7Pq8yvh73coVgMjVpi8ikxf9Io3
         sSdMDY1h2v3W3U8k0617c/xeq5mMIJcKImUbln+1KUcTinYDfBbGy4pZrmNrCIJbyIrP
         K/vw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738338541; x=1738943341;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gCGzEsj6zLlfLOeCZhsH6nNDDD3D+Wbn+ATlW0GbeIE=;
        b=PKvhD9YbyYhU51Aaha7lE+YrGtVYm4QWkHxX/Z443hJvAtc3+iOmpYhJkSJ9T2n22w
         6hffpv4qypNpRr9UzcK17Ymk3iINdd/2+Bs+jFLBw0rSx0yThqWppqQjBvAwPWtbg37/
         0B+q3yCHbintYVNGYPs/aaCXmkWWYkVTGJ33rXGmScGyqmMRHe+do25wxLkA9XnUrCd7
         zKCbo/WhqQBCOmZe5dx800RruTMEH5qpAXZe/4gpYtGoYZvhnfIlRUfvNVMsOZlfXYaS
         QuC9mcvBQo4CBS1SxMQCVTQOsK9YcBZ6R3U+LleRa407FbyLKtum+6bAJlkDH5L4To/b
         0v/A==
X-Forwarded-Encrypted: i=2; AJvYcCVby/FNA1vwhWYYGYD1tArwfLatRQrCsrV2BEElfJCrw5mAkv8docFDv0Rv/qaxPKbIRjo7wg==@lfdr.de
X-Gm-Message-State: AOJu0YwA8eMEEAJXiMVlmuhdtfc7j87GXaABfHVx+n4d3jLJfqHe8Qze
	daN07yFZMea8bHy39C7lDp/jr+BCp8rxKFVKkp6AYdssCOHOt0KMzUI0R4xtFA8=
X-Google-Smtp-Source: AGHT+IF9jJg/gjGC6fsSjrxDExz6GBqWTNotnJxW+iXcCVH++Y2/UdAZn8k1Ns8aMF+HAmphXE38ng==
X-Received: by 2002:a05:6214:1310:b0:6e1:a51d:e96f with SMTP id 6a1803df08f44-6e243bef7cemr166185646d6.8.1738338540993;
        Fri, 31 Jan 2025 07:49:00 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:f7cc:0:b0:6d8:87d5:f97d with SMTP id 6a1803df08f44-6e251eb7334ls19956316d6.2.-pod-prod-07-us;
 Fri, 31 Jan 2025 07:49:00 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVvzXv7F/nLVk99xXBguq3ht0RDMrGLmqfRfZsdOBWx+4Ym/X9yIbpkHo5co0XFQ560QhuL1kEaNJaH2A==@gapps.redhat.com
X-Received: by 2002:a05:620a:450e:b0:7be:8304:f24b with SMTP id af79cd13be357-7bffcd9d55cmr1971054785a.56.1738338540135;
        Fri, 31 Jan 2025 07:49:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738338540; cv=none;
        d=google.com; s=arc-20240605;
        b=IsQMDMoaMub3c1l1kOHjBp90Dooxfbg3n+ZrRuCB92klVUOWuhNPTkN8B2C/8FKlJG
         vHQJvj1fIPBuFP9e3tFQps6g6cvNdRNISoxTe0/TuYkjFh2kT0A6eGMoz9QpHu6ptz/R
         lqEG0NR7Z1jJbt6zP0MX5UFqCbrntgQOKlWyOsLPjVkBgj9O+gl5lXSB7Kml+e3oa4rJ
         gSN/3yzI9pGYR7RIweym7gx6vp/JeGTUw3Z7pOP/EVFYsmdi1gr2qGALGRbcy+CDSXX0
         8bBiXivxfdP+gJlpcYlU1E+INYKj1keae1FA9YJdEFyOUM6U6LExzD9Q/xkmHIt0GEYv
         chdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=DBmFpxiCOdL6ssVruHr6bx2Xb8NSC422wdAPp/XfC+I=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=P538+7rR9Yq40jMg1ruDLwg0qwCkmak7tNI5dC06p6MV4NcK4VWpz3zNhWptnm5CTd
         YoDVIV0GTHd1uV7Uhz3zFGRXFY07unPJmXto5mi3e0O3sDqZRMkszQDuSwX5a85gtnkM
         DQkFVdwpiNZ8/L9q6wpRJdjxw4j1ABgN8yxJhQcBSHWv8uW6ENEvYM0Q/W2CctW9qR8t
         0soQu3yyIoYYPqvBrjNbjBdcZw3/IolH9fD9yO3dBCfVnqfQcEuKKxOpyaFjthCKbG+l
         ACiSG97KuAV/MJZ92xfxnTkeb7rS7df7WJpYE5yiOJ407RbLe1ZPeGyeIxUdQZA3JjEg
         oBfA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7c00a8bf29fsi396631085a.28.2025.01.31.07.48.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jan 2025 07:49:00 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted sender) client-ip=202.12.124.157;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-bs1cOB1eMv6po7iZs17wgg-1; Fri,
 31 Jan 2025 10:48:58 -0500
X-MC-Unique: bs1cOB1eMv6po7iZs17wgg-1
X-Mimecast-MFC-AGG-ID: bs1cOB1eMv6po7iZs17wgg
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DDCD91801F17
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 15:48:57 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D9D451955F3B; Fri, 31 Jan 2025 15:48:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D740619560AA
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 15:48:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5AA1118009C5
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 15:48:57 +0000 (UTC)
Received: from fhigh-b6-smtp.messagingengine.com
 (fhigh-b6-smtp.messagingengine.com [202.12.124.157]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-677-Jebqie70NDWseSMz5IkntA-1; Fri, 31 Jan 2025 10:48:55 -0500
X-MC-Unique: Jebqie70NDWseSMz5IkntA-1
X-Mimecast-MFC-AGG-ID: Jebqie70NDWseSMz5IkntA
Received: from phl-compute-12.internal (phl-compute-12.phl.internal [10.202.2.52])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 6CFF62540131;
	Fri, 31 Jan 2025 10:48:54 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-12.internal (MEProxy); Fri, 31 Jan 2025 10:48:54 -0500
X-ME-Sender: <xms:5fCcZ1vwZ5Beag6lXNxotynQ56m3ph_UXWnCXGEL7USF0mEVahfjMg>
    <xme:5fCcZ-c0DaSJ6CqegUmpFGQHsYAqZFP_K1d-dsypCn4oP8bVqcsvUv__5n3w0z2K6
    p2w1sBRRSVkmVlhnmk>
X-ME-Received: <xmr:5fCcZ4xoe8UI1jqtc8I5v-2lIFGlkk-STLfSuWXbMsp8DWwJLAM9cVcKw-Pd6NnGTf_J5FuITCIlrbryUBmqutEOU5g64sl7Bc0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdeludejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghh
    ihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnh
    epvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeffledufedtnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvg
    eshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhho
    uggvpehsmhhtphhouhhtpdhrtghpthhtohepshgrlhhtsehprghnihigrdgtohhmpdhrtg
    hpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:5vCcZ8O3bAMrUWx5aWgfUkGsvt6iMEpzTVBRJkatfTd_2D1_Fq-Q2w>
    <xmx:5vCcZ180a-Dn8q8dzjrc5AxQY1N-1_MLHF9PalI21Yc8xE843PGXjw>
    <xmx:5vCcZ8VCLQlHxHeuEMZaxQTCfs7HHm6PcXB1xBYiR0wAYp3ewS-YDw>
    <xmx:5vCcZ2f9e2jm0f-yAd8LC__Fq6lf1nx1-UMTjQ5hcY9i-V8PT-YMTg>
    <xmx:5vCcZ3LO3tJlUuYEDWG_9kJZ5u5SC4y1_DtcLphwgCfNpemLIA1JnbIC>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 31 Jan 2025 10:48:53 -0500 (EST)
Date: Fri, 31 Jan 2025 07:48:51 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rudy Vener <salt@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: more gui obfuscation
In-Reply-To: <Z5zsPmVhEhvMGaTL@panix.com>
Message-ID: <6aa20dc0-b64b-f866-090a-a65e80f3dc05@hubert-humphrey.com>
References: <Z5xIBQ5itO0f071J@panix.com> <Pine.LNX.4.64.2501310351040.2129007@users.shellworld.net> <Z5zsPmVhEhvMGaTL@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 9U2-e1Y-Zh2192gK8SZ3X47PO5FRu6XlhgoSK8z3hVI_1738338534
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 58rpH6yhwb-dJEIlLocbZPoigXbIDeyiXg3QYuSweHM_1738338538
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.157 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well Rudy-and-All, here's another strategy. Why not insert an external menu in 
L Y N X. Here are my entries
EXTERNAL_MENU:http:mpv:/usr/bin/mpv --no-video --really-quiet %s:TRUE
EXTERNAL_MENU:http:yt-dlp:/usr/local/bin/yt-dlp -o '%(title)s.%(ext)s' %s:TRUE "--prefer-mp4"
EXTERNAL_MENU:http:youtube-viewer/custom:yv-custom  %s:TRUE "--prefer-mp4"
EXTERNAL_MENU:http:urlview:lynx -cfg /home/chime/lynx.cfg -source -base  %s |urlview -:TRUE
EXTERNAL_MENU:http:reader:rdrview --disable-sandbox -T title -B "lynx -cfg /home/chime/lynx.cfg -assume_charset=utf-8" '%s':TRUE
EXTERNAL_MENU:http:safari-spoof:lynx -cfg /home/chime/lynx.cfg -useragent="Safari" %s:TRUE
Back again live, you will obviously need youtube-viewer, yt-dlp, rdrview, and 
urlview which certainly make a browsing experience a bit easier when it comes 
to grabbing or playing media, as well as just enjoying plain-text of articles.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

